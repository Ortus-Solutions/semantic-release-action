#!/bin/sh

# Arguments are passed in from action.yml through the Dockerfile
DRY_RUN=$1
FORCE=$2
VERBOSE=$3
BRANCH=$4
PLUGINS=$5

###
# CONFIGURATION
# Most configuration is set via `box_config` env vars in the action.
# CommandBox will pick them up and run `config set`, removing the need to manually configure the module.
###
export box_config_verboseErrors=$VERBOSE
export box_config_endpoints_forgebox_APIToken=$FORGEBOX_TOKEN

box config set modules.commandbox-semantic-release.targetBranch=$BRANCH \
    modules.commandbox-semantic-release.plugins="'$PLUGINS'"

###
# RUN IT
###
box semantic-release dryRun=$DRY_RUN force=$FORCE verbose=$VERBOSE