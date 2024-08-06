```yaml
topic:      Windows cleanup
date:       2024-08-06
author:     BO$ <https://github.com/bos-8>
tag:        [guide, cleanup, windows, config]
version:    0x0010
```
# WINDOWS TIPS & TRICKS
## Edge uninstall
1. Goto regedit.exe
2. HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge\NoRemove --> 0
3. HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge Update\NoRemove --> 0

## Windows Start Search
1. Create key:
2. HKEY-CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer
3. Create DWORD (32-bit) Value
4. DisableSearchBoxSuggestions
5. Set Value to --> 1

## Disable Hibernation
1. Goto Powershell as Admin
```powershell
powercfg -h off
```
(free about 16GiB on drive depend of RAM)