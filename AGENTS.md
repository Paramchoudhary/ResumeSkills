# AGENTS.md

Guidance for AI agents (and humans) working with this repository.

## What this repository is

A collection of **22 [Agent Skills](https://agentskills.io)** for resume writing and job searching — ATS optimization, bullet writing, job matching, interview prep, salary negotiation, and more. The repo is pure Markdown plus a small amount of JSON/shell tooling: there is no build step and no test suite.

## Repository layout

```
skills/<skill-name>/SKILL.md    ← canonical source (edit HERE and only here)
.agents/skills/<skill-name>     ← symlink → ../../skills/<skill-name>
.agent/skills/<skill-name>      ← symlink → ../../skills/<skill-name>
.claude/skills/<skill-name>     ← symlink → ../../skills/<skill-name>   (Claude Code)
.codex/skills/<skill-name>      ← symlink → ../../skills/<skill-name>   (Codex)
.cursor/skills/<skill-name>     ← symlink → ../../skills/<skill-name>   (Cursor)
.gemini/skills/<skill-name>     ← symlink → ../../skills/<skill-name>   (Gemini CLI)
.opencode/skills/<skill-name>   ← symlink → ../../skills/<skill-name>   (OpenCode)
.windsurf/skills/<skill-name>   ← symlink → ../../skills/<skill-name>   (Windsurf)
.claude-plugin/                 ← Claude Code plugin + marketplace manifests
scripts/sync-skills.sh          ← regenerates all symlink mirrors
```

`skills/` holds the real files. Every other `*/skills/` directory is a committed
relative symlink mirror so each tool auto-discovers the skills in a cloned repo.
Never edit through a symlink path or add real files to a mirror directory —
`scripts/sync-skills.sh` will overwrite them.

## Skill format

Each skill is one directory containing a `SKILL.md` with YAML frontmatter:

```yaml
---
name: my-skill-name        # REQUIRED. kebab-case; MUST equal the directory name
description: What it does  # REQUIRED. what the skill does + when to use it
---
```

Optional frontmatter per the [Agent Skills spec](https://agentskills.io/specification):
`license`, `metadata`, `compatibility`. The body follows the structure described
in [CONTRIBUTING.md](CONTRIBUTING.md).

## Installation

- **Claude Code (CLI or Claude Desktop's Code tab)**:
  `/plugin marketplace add Paramchoudhary/ResumeSkills` then
  `/plugin install resume-skills@resume-skills-marketplace`
- **Cross-tool CLI**: `npx skills add Paramchoudhary/ResumeSkills`
- **Manual**: copy (or symlink) `skills/<skill-name>` into your tool's skills directory

## Adding or changing a skill

1. Create/edit the skill under `skills/<skill-name>/` only.
2. Run `scripts/sync-skills.sh` to regenerate the symlink mirrors
   (CI verifies this on pull requests and self-heals drift on `main`).
3. Bump `version` in `.claude-plugin/plugin.json` — plugin users only receive
   updates on a version bump.
4. Update the skill table and category list in `README.md`.

## Windows note

The symlink mirrors require `git config core.symlinks true` (plus Developer
Mode or admin on Windows). Without it they check out as plain text files —
harmless, and the canonical `skills/`, the Claude Code plugin, and
`npx skills add` installs all still work.
