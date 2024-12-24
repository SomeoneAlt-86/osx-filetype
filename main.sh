#/bin/bash
echo -n "Processing"
for i in {1..4}; do
    echo -n "."   # Print a dot without a newline
    sleep 1       # Wait 1 second
done
echo " Done!"
SECONDS=0
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -dump | grep applescript | grep -o '\.\w\+'
echo 'Recorded all file types!' 
echo 'finished execution in $SECONDS'
