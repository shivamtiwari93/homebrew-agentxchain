# homebrew-agentxchain

Homebrew tap for [`agentxchain`](https://www.npmjs.com/package/agentxchain).

## Install

```bash
brew tap shivamtiwari93/agentxchain
brew install agentxchain
```

## Current Packaging Model

The tap currently installs the published npm package using Homebrew's `node` dependency.

Current formula target:

- package: `agentxchain`
- version: `0.8.8`
- source tarball: `https://registry.npmjs.org/agentxchain/-/agentxchain-0.8.8.tgz`

## Maintainer Notes

When a new npm version is published:

1. Update `Formula/agentxchain.rb`
2. Replace the `url` with the new npm tarball URL
3. Replace the `sha256` with the new tarball hash
4. Commit and push
