#!/usr/bin/env bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 urltosncosmorelease">&2
    echo "This is meant to be run from the upstream dir">&2
    echo "Example :$0 https://github.com/sncosmo/sncosmo/archive/v1.3.0.tar.gz ">&2
    exit
fi

# mv the current file to sncosmo.tgz.old
mv sncosmo.tgz sncosmo.tgz.old
# Download the latest release
curl -o sncosmo.tgz -OL $1
# Delete  `sncosmo.tgz.old` yourself
