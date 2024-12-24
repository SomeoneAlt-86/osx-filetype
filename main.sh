#/bin/bash
echo 'Scanning all available file types ...'
SECONDS=0
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -dump | grep applescript | grep -o '\.\w\+'
echo 'Recorded all file types!' 
echo "finished execution in $SECONDS seconds."
