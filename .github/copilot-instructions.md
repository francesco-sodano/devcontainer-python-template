# Copilot Custom Instructions

Use this file to steer Copilot completions and chat responses for this repository.
Update the bullets to match the team’s conventions.

## Project context
- Language: Python 3.12
- Package manager: uv  
- Requirements file: requirements.txt
- Dev tools installed: black (26.1.0), mypy (1.19.1), pytest (9.0.2)

## Code style
- Format with black; prefer explicit imports and type hints.
- Keep functions small and pure when practical; avoid hidden globals.

## Testing
- Default test runner: pytest.
- Add/adjust tests alongside code changes.

## Documentation
- Update README or inline docstrings when behavior changes.

## Communication
- Be concise; include file paths and line ranges when referencing edits.
- If requirements are ambiguous, ask for clarification before coding.
