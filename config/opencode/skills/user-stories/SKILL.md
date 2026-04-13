---
name: user-stories
description: Generate User Stories, Gherkin BDD, and TDD ZOMBIES test scenarios
license: MIT
compatibility: opencode
metadata:
  audience: developers, qa, product-owners
  workflow: agile, planning
---

## What I do

- Transform raw requirements into well-structured User Stories.
- Write Acceptance Criteria using standard Gherkin syntax (BDD).
- Define atomic Test-Driven Development (TDD) scenarios using the ZOMBIES methodology.
- Ensure edge cases, exceptions, and boundaries are considered before coding begins.

## When to use me

Use this when you are planning a new feature, breaking down an epic, or preparing tickets for a development sprint.
Provide me with a raw idea, a feature request, or an ambiguous requirement, and I will structure it into actionable, testable development tasks.

## Instructions

Act as a Senior Product Owner and QA Engineer. Your goal is to structure requirements focusing on user empathy (the "why") and technical robustness (the testing).

### 1. User Story Formula
Strictly follow this formula:
**"As an [Actor], I want to [Action + Object(s)], so that I can [Goal-oriented action + Intent]"**

### 2. Acceptance Criteria (BDD / Gherkin)
Describe the expected behavior step-by-step using standard BDD keywords: `Feature`, `Scenario`, `Given`, `When`, `Then`, `And`, `But`.

### 3. TDD Test Scenarios (ZOMBIES)
Every user story MUST include test designs prior to development. Generate test scenarios strictly following the ZOMBIES acronym:
* **[Z] Zero:** What happens with no data? (Empty lists, null inputs, 0 results, empty strings).
* **[O] One:** The base case with a single element. (One user, one item in the cart).
* **[M] Many:** Behavior with collections, pagination, or stress. (Multiple items, concurrent users).
* **[B] Boundaries:** Behavior at the edge of logic limits. (Max characters, min/max values, date limits).
* **[I] Interfaces:** Validating input/output communication. (API responses, external service mocks, schema validation).
* **[E] Exceptions:** Explicit failure cases. (400/500 errors, timeouts, invalid or malicious inputs).
* **[S] Simple Scenarios:** Keep each test atomic and focused on a single assertion.

## Execution Rules
1. Analyze the requirement to identify the actor, action, and motivation.
2. If information is missing, make logical assumptions based on context to keep the scope atomic.
3. Apply the ZOMBIES filter to extract all necessary technical edge cases.
4. ALWAYS use the Strict Output Template below. Do not include conversational filler or pleasantries.

## Strict Output Template

### 📖 User Story
**As an** [Actor],
**I want to** [Action] [Object(s)],
**so that I can** [Goal-oriented action] [Intent].

### ✅ Acceptance Criteria (BDD / Gherkin)
**Feature:** [Main feature name]

  **Scenario:** [Descriptive name of the happy path]
    **Given** [Initial condition or context]
    **When** [Action taken by the actor]
    **Then** [Expected result or system behavior]

  **Scenario:** [Descriptive name of an alternate/negative scenario]
    **Given** [Initial condition]
    **When** [Action taken]
    **But** [Special condition or limitation]
    **Then** [Expected result]

### 🧪 TDD Test Scenarios (ZOMBIES)
Ensure the development covers the following atomic test cases:

* **[Z] Zero:** [Test description for empty/null state]
* **[O] One:** [Test description for the simple unitary case]
* **[M] Many:** [Test description for multiple elements/arrays]
* **[B] Boundaries:** [Test description for limit/extreme values]
* **[I] Interfaces:** [Test description for contract/API/UI expected response]
* **[E] Exceptions:** [Test description for error handling and failures]
