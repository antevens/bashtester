#!/usr/bin/env bash
#
# This script runs SDElements as a containerized service. For more information
# please see the README.
#
# Copyright (c) 2018 SD Elements Inc.
#
#  All Rights Reserved.
#
# NOTICE:  All information contained herein is, and remains
# the property of SD Elements Incorporated and its suppliers,
# if any.  The intellectual and technical concepts contained
# herein are proprietary to SD Elements Incorporated
# and its suppliers and may be covered by U.S., Canadian and other Patents,
# patents in process, and are protected by trade secret or copyright law.
# Dissemination of this information or reproduction of this material
# is strictly forbidden unless prior written permission is obtained
# from SD Elements Inc..

# Set strict mode
set -eu

# Version
# shellcheck disable=2034
version='0.0.1'

dcc="docker-compose run bash-tester"

if [ "${#}" -eq 0 ] || [ "${1}" == '--help' ] ; then
    echo "Bash tester, tests a bash script/command on all currently supported bash versions"
    echo "Typically this would be used as a git submodule and will map it's parent directory as /code"
    echo "Usage: ${0} command_to_run"
    echo "Example: ${0} /code/run_app.sh --run_unit_tests"
    exit 1
fi

default_bash_images=( '3.0.22' \
                      '3.1.23' \
                      '3.2.57' \
                      '4.0.44' \
                      '4.1.17' \
                      '4.2.53' \
                      '4.3.48' \
                      '4.4.23' \
                      '5.0-beta' )

bash_images=( ${bash_images:-"${default_bash_images[@]}"} )

for version in "${bash_images[@]}" ; do
    echo "########## ${version} ##########"
    target_bash_version=${version} docker-compose run bash-tester "${@}"
    echo "############################"
done
