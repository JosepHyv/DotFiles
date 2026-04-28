#!/bin/bash

IMAGEN="gaming"
COMANDO=$1
CONTENEDOR=$2

if [ -z "$COMANDO" ]; then
    echo "Uso: $0 {build|copy|run} [argumentos...]"
    exit 1
fi

case $COMANDO in
    build)
        if [ -z "$CONTENEDOR" ]; then
            echo "Error: Debes especificar un nombre para el contenedor."
            echo "Ejemplo: $0 build super_tux"
            exit 1
        fi

        # 1. Validar que la imagen base exista, si no, compilarla automáticamente
        if ! podman image exists "$IMAGEN"; then
            echo "La imagen base '$IMAGEN' no existe localmente. Compilándola..."
            # Verificamos que exista el archivo de configuración antes de compilar
            if [ -f "Containerfile" ] || [ -f "Dockerfile" ]; then
                podman build -t "$IMAGEN" .
                # Si la compilación falla (código distinto de 0), detenemos el script
                if [ $? -ne 0 ]; then
                    echo "Error: Falló la compilación de la imagen."
                    exit 1
                fi
            else
                echo "Error: No se encontró el archivo 'Containerfile' en este directorio."
                exit 1
            fi
        fi

        # 2. Comprobar si el contenedor ya existe
        if podman container exists "$CONTENEDOR"; then
            echo "El contenedor '$CONTENEDOR' ya existe."
        else
            echo "Creando el contenedor '$CONTENEDOR'..."
            podman create -it \
              --name "$CONTENEDOR" \
              --userns=keep-id \
              --device /dev/dri \
              --device /dev/snd \
              --env DISPLAY="$DISPLAY" \
              --env WAYLAND_DISPLAY="$WAYLAND_DISPLAY" \
              --env XDG_RUNTIME_DIR="$XDG_RUNTIME_DIR" \
              --env PULSE_SERVER=unix:"$XDG_RUNTIME_DIR"/pulse/native \
              --volume /tmp/.X11-unix:/tmp/.X11-unix:ro \
              --volume "$XDG_RUNTIME_DIR"/"$WAYLAND_DISPLAY":"$XDG_RUNTIME_DIR"/"$WAYLAND_DISPLAY":ro \
              --volume "$XDG_RUNTIME_DIR"/pulse:/run/user/1000/pulse:ro \
              "$IMAGEN" /bin/bash
            echo "¡Contenedor '$CONTENEDOR' creado exitosamente!"
        fi
        ;;

    copy)
        ARCHIVO_ORIGEN=$3

        if [ -z "$CONTENEDOR" ] || [ -z "$ARCHIVO_ORIGEN" ]; then
            echo "Error: Faltan argumentos para copy."
            echo "Ejemplo: $0 copy super_tux SuperTux.zip"
            exit 1
        fi

        if ! podman container exists "$CONTENEDOR"; then
            echo "Error: El contenedor '$CONTENEDOR' no existe. Usa 'build' primero."
            exit 1
        fi

        echo "Copiando '$ARCHIVO_ORIGEN' a '$CONTENEDOR:/home/gamer/'..."
        podman cp "$ARCHIVO_ORIGEN" "$CONTENEDOR":/home/gamer/
        echo "¡Copia completada!"
        ;;

    run)
        if [ -z "$CONTENEDOR" ]; then
            echo "Error: Debes especificar el nombre del contenedor a ejecutar."
            echo "Ejemplo: $0 run super_tux"
            exit 1
        fi

        if ! podman container exists "$CONTENEDOR"; then
            echo "Error: El contenedor '$CONTENEDOR' no existe."
            exit 1
        fi

        # Dar permisos a X11 por si la app usa XWayland
        xhost +si:localuser:$USER > /dev/null

        echo "Iniciando '$CONTENEDOR'..."
        # start -ai arranca el contenedor y nos adjunta a la terminal interactiva (tty)
        podman start -ai "$CONTENEDOR"
        ;;

    *)
        echo "Comando no reconocido: $COMANDO"
        echo "Uso: $0 {build|copy|run} [argumentos...]"
        exit 1
        ;;
esac
