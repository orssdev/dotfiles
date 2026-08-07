Push the current branch and open a pull/merge request against main, following the PR/MR style rules in CLAUDE.md, with Claude credited in the description.

1. Run `git status`, `git diff main...HEAD`, and `git log main..HEAD --oneline` to see everything the request will include.
2. If there are uncommitted changes, stop and ask — don't fold them into the request silently.
3. Push the branch (`-u` if it has no upstream yet).
4. Check `git remote get-url origin` to pick the host CLI: `gh pr create` for github.com, `glab mr create` for gitlab.com.
5. Draft a title (`<type>(scope): message`, under 70 chars) and body: `## Summary` + `## Test plan`, followed by:

   🤖 Generated with [Claude Code](https://claude.com/claude-code)

6. Create the request with the appropriate CLI.
7. Report the URL.

Do not force-push. Do not merge.
