 #!/bin/sh

log=$1
#display starting count of all http code present when the file was executed
echo "=======Starting"
cat $log | awk  '{print $9}' | sort | uniq -c | sort -nr | awk '{print "http code " $2 ": " $1}'
# Check if file was changed
while  S=$(inotifywait -eMODIFY $log 2>/dev/null)
do
echo "=======" $(date)
 # if it was changed sort and count each unique http code
cat $log | awk  '{print $9}' | sort | uniq -c | sort -nr | awk '{print "http code " $2 ": " $1}'
done
