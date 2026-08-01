# Git commit style

- Format: `<type>(scope): message` — e.g. `fix(zsh): correct PATH export order`
  - Types: feat, fix, refactor, chore, docs, test, style, perf, build, ci
- One line subject only, no body, no footer.
- No `Co-Authored-By` trailer by default — only add one when explicitly using /commit-attributed.
- Make atomic commits: every file in a commit must be logically related to the others.
  - If a change touches code plus its corresponding hooks, comments, or tests, commit them together as one unit.
  - Unrelated changes go in separate commits, even if made in the same session.

# PR/MR style

- Title: same `<type>(scope): message` format as commits, under 70 characters.
- Body: `## Summary` (1-3 bullets) and `## Test plan` (checklist) only.
- No attribution footer by default — only add one when explicitly using /sr-attributed.
- Target branch: main, unless told otherwise.

# Branch workflow

- Before starting new work: `git fetch`, then check the current branch's PR/MR status
  (`gh pr view --json state` or `glab mr view`).
  - If it was merged, or you're already on `main`: switch to `main`, `git pull`, then create and switch to a new branch (`git switch -c`).
  - If it's still open: don't stack unrelated work on it — branch fresh from an updated `main` instead.
- Branch names: `<type>/<short-description>` — same `type` values as commits, e.g. `feat/skhd-hotkeys`.
