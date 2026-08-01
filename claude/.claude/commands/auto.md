Implement the following change end-to-end, fully automated: code it, commit it, and open a PR/MR — no pauses for approval on the git workflow.

Task: $ARGUMENTS

1. Follow the branch workflow rule in CLAUDE.md: `git fetch`, check the current branch's PR/MR status, and make sure you're on a fresh branch off an up-to-date `main` before making changes.
2. Implement the task described above.
3. Commit following /commit-attributed: split into atomic commits per the commit style in CLAUDE.md, with Claude credited as co-author.
4. Submit following /sr-attributed: push the branch and open a PR/MR per the PR/MR style in CLAUDE.md, with Claude credited in the description.
5. Report the PR/MR URL.

This assumes an unattended session — don't stop for confirmation on git operations already covered by CLAUDE.md rules (branching, committing, pushing, opening the request). Do stop and ask if the task description itself is ambiguous about what to build.
