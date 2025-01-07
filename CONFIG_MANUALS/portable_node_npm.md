---
topic:      "Node.js and NPM portable"
creation:   2025-01-07
author:     "BO$ <https://github.com/bos-8>"
tag:        [guide, config, nodejs, npm]
---

# PORTABLE NODE.JS AND NPM
1. Download NODE binary from: [nodejs](https://nodejs.org/en/download/current)
2. Unzip to designated folder for example: `Node`
3. Add path to folder to system PATH: `C:\PathTo...\Node`
   1. Check in powershell:
```powershell
node -v
npm -v
npx -v
```
4. Change: (optional)
   1. npm.ps1 --> npm.ps1.old
   2. npx.ps1 --> npx.ps1.old