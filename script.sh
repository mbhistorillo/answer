 #!/bin/sh

log=$1
echo "Starting"
# Check if file was changed
while  S=$(inotifywait -eMODIFY $log 2>/dev/null)
do
echo "============"
 # if it was changed sort and count each unique http code
cat $log | awk  '{print $9}' | sort | uniq -c | sort -nr | awk '{print "http code " $2 ": " $1}'
done
