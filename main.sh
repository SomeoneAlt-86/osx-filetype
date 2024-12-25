#!/bin/bash
echo 'Scanning all available file types ...'
SECONDS=0
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -dump | grep -o '\.[a-zA-Z0-9]\{1,5\}' | sort -u
echo 'Recorded all file types!'
echo "finished execution in $SECONDS seconds."
