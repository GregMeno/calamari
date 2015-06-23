#/bin/bash
set -e

# supports invocations like
# ./vps_bootstrap.sh "build_deps,git_clone,virtualenv" 

pillar_data="{"\"username\":\"$USER\""}"
sudo salt-call --local --file-root=$(pwd)/vagrant/devmode/salt/roots state.sls "$1" pillar="$pillar_data"
