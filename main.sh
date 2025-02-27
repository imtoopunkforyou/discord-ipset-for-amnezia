#!/usr/bin/env bash
set -euo pipefail

readonly DISCORD_LIST_URL='https://raw.githubusercontent.com/Flowseal/zapret-discord-youtube/refs/heads/main/list-discord.txt'
readonly DISCORD_IPSET_URL='https://raw.githubusercontent.com/Flowseal/zapret-discord-youtube/refs/heads/main/ipset-discord.txt'

jq_script() {
    jq -Rn '[inputs | {hostname: ., ip: ""}]'
}

combined_data() {
    curl -sS --fail "$DISCORD_LIST_URL" "$DISCORD_IPSET_URL" \
    | tr -d '\r' | grep -Ev '^#|^$' | sort -u
}

main() {
    local output_file="${1:-discord-ipset.json}"
    combined_data | jq_script > "$output_file"
    echo "Generated JSON with $(jq length "$output_file") entries in: $output_file"
}

main "$@"