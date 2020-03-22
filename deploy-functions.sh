#!/bin/bash

# Loop through the directories and deploy all functions inside each directory if no directory is supplied
# If a directory/function name is specified, deploy only that function.

if [ -z "$@" ]; then
    for d in */; do
        cd ${d%/}
        gcloud beta functions deploy "${d%/}" --trigger-http --entry-point="${d%/}"
        cd ..
    done
else
    cd $@
    gcloud beta functions deploy "$@" --trigger-http --entry-point="$@"
    cd ..
fi
