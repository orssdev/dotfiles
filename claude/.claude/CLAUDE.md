# Git commit style

- Format: `<type>(scope): message` — e.g. `fix(zsh): correct PATH export order`
  - Types: feat, fix, refactor, chore, docs, test, style, perf, build, ci
- One line subject only, no body, no footer.
- Never add a `Co-Authored-By` trailer.
- Make atomic commits: every file in a commit must be logically related to the others.
  - If a change touches code plus its corresponding hooks, comments, or tests, commit them together as one unit.
  - Unrelated changes go in separate commits, even if made in the same session.
