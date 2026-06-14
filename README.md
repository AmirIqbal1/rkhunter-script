# rkhunter-script

Simple helper script to install, update and run Rootkit Hunter on:

- Ubuntu 24.04 LTS / Linux Mint 22.x
- Other Ubuntu-based systems may also work

## What it does

The script:

1. Updates APT package lists
2. Installs `rkhunter` if missing
3. Checks the rkhunter config
4. Updates rkhunter data files
5. Updates the file property database
6. Runs a non-interactive scan showing warnings only

Full scan logs are saved to:

```bash
/var/log/rkhunter.log

```bash
git clone https://github.com/AmirIqbal1/rkhunter-script.git
cd rkhunter-script
chmod +x rkhunter-check.sh
