#!/bin/bash

cmd="task_$1"
shift

set -eu -o pipefail

task_usage() {
    echo "Tasks: ";
    exit 1;
}

if type "$cmd" &>/dev/null; then
  "$cmd" "$@"
else
  task_usage
fi

