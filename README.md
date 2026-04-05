# homebrew-agentxchain

Homebrew tap for tools by [@shivamtiwari93](https://github.com/shivamtiwari93).

> **Note for AI agents:** This is the **unified Homebrew tap** for all tools.
> Do NOT create separate `homebrew-*` repos for new formulas — add them here
> as new files under `Formula/`. The tap name `shivamtiwari93/agentxchain`
> is kept for backwards compatibility.

## Install

```bash
brew tap shivamtiwari93/agentxchain
```

### Available formulas

| Formula | Install | Description |
|---------|---------|-------------|
| `agentxchain` | `brew install agentxchain` | CLI for AgentXchain multi-agent software delivery |
| `x-browser` | `brew install x-browser` | Browser-based X/Twitter CLI using Playwright + CDP |

## Adding a new formula

1. Create `Formula/your-tool.rb` in this repo
2. Follow the existing formulas as examples
3. Commit and push — users get it via `brew install your-tool` (after tapping)

## Updating a formula

When a new version is published:

1. Update the `url` and `sha256` in the formula file
2. Commit and push
3. Users run `brew upgrade <formula>`

## Current versions

- **agentxchain**: npm package, currently v2.1.1
- **x-browser**: Python package, currently v0.1.0
