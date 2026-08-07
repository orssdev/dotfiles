Analyze all pending git changes and create commits following the commit style rules in CLAUDE.md.

1. Run `git status` and `git diff` (staged + unstaged) to see everything that has changed. Run `git log -5 --oneline` if you need to confirm conventions.
2. Split the changes into atomic commits: group files whose changes are logically related (e.g. a change plus its corresponding hooks, comments, or tests) into the same commit. Put unrelated changes in separate commits, even if made in the same session.
3. For each group, stage only those files and commit using the message format and constraints defined in CLAUDE.md.
4. After committing, run `git status` to confirm the result — report anything left uncommitted and why (e.g. untracked files intentionally excluded).

Do not push. Do not amend existing commits. If a file's grouping is ambiguous, use judgment based on which change it's most logically tied to.
