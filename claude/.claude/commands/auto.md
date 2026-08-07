Implement the following change end-to-end, fully automated: code it and commit it — no pauses for approval on the git workflow. Does not push or open a PR/MR; run /sr or /sr-attributed separately when ready to submit.

Task: $ARGUMENTS

1. Follow the branch workflow rule in CLAUDE.md before making changes (what that entails — a fresh branch off `main`, or a shared branch like `develop` — depends on the repo's CLAUDE.md).
2. Implement the task described above.
3. Commit following /commit-attributed: split into atomic commits per the commit style in CLAUDE.md, with Claude credited as co-author.
4. Report which commits were made.

This assumes an unattended session — don't stop for confirmation on git operations already covered by CLAUDE.md rules (branching, committing). Do stop and ask if the task description itself is ambiguous about what to build.
