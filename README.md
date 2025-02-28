# Discord IP/Hostname JSON Generator for [amnezia-vpn](https://github.com/amnezia-vpn)

A Bash script to generate a consolidated JSON list of Discord-related hostnames and IP addresses from trusted sources.

## Requirements
- `bash`
- `curl`
- `jq`
- `coreutils` (sort, tr, grep)

## Installation

### 1. Install Dependencies

- For Debian/Ubuntu:
```bash
sudo apt update && sudo apt install -y curl jq
```
- For Fedora/RHEL/CentOS:
```bash
sudo dnf install -y curl jq
```
### 2. Download the Script
```bash
curl -L -o discord-ipset-gen https://raw.githubusercontent.com/imtoopunkforyou/discord-ipset-for-amnezia/refs/heads/main/main.sh
```
```bash
chmod +x discord-ipset-gen
```

## Usage
- Basic usage:
```bash
./discord-ipset-gen <output-file.json>
```
- Typical output:
```
Generated JSON with 427 entries in: discord-ipset.json
```
- File structure:
```json
[
  {
    "hostname": "example.discord.gg",
    "ip": "35.219.254.0/24"
  },
  ...
]
```
## List sources
- [Discord Hostnames](https://github.com/Flowseal/zapret-discord-youtube/blob/main/list-discord.txt)
- [Discord IPs](https://github.com/Flowseal/zapret-discord-youtube/blob/main/ipset-discord.txt)
