Analyze all pending git changes and create commits following the commit style rules in CLAUDE.md, with Claude credited as co-author.

1. Run `git status` and `git diff` (staged + unstaged) to see everything that has changed. Run `git log -5 --oneline` if you need to confirm conventions.
2. Split the changes into atomic commits: group files whose changes are logically related into the same commit. Put unrelated changes in separate commits, even if made in the same session.
3. For each group, stage only those files and commit using the message format from CLAUDE.md, plus this trailer:

   Co-Authored-By: Claude <noreply@anthropic.com>

4. After committing, run `git status` to confirm the result — report anything left uncommitted and why.

Do not push. Do not amend existing commits. If a file's grouping is ambiguous, use judgment based on which change it's most logically tied to.
