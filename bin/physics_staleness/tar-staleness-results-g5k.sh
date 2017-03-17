#!/usr/bin/env bash

tarAll () {
#    local own_node_name="${HOSTNAME::-12}" # remove the .grid5000.fr part of the name
    local own_node_name="${HOSTNAME}" # remove the .grid5000.fr part of the name
    local datafolder="_build/default/rel/antidote/data/"
    local result_f_name="node-${own_node_name}-StalenessResults.tar"
    cd
    cd antidote
    tar -czvf "../${result_f_name}" "${datafolder}"
}


tarAll