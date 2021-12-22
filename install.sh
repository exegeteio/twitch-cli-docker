#!/bin/bash

latest=$(curl -sSL https://api.github.com/repos/twitchdev/twitch-cli/releases/latest | jq -r '.name')
echo Installing twitch-cli ${latest}
curl -SL -o /tmp/twitch-cli.tgz "https://github.com/twitchdev/twitch-cli/releases/download/${latest}/twitch-cli_${latest#v}_Linux_x86_64.tar.gz"
(cd /tmp && tar -xzf /tmp/twitch-cli.tgz)
cp /tmp/twitch /usr/local/bin/

