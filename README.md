## Brief Description ##

1. This Script will display the count of all http code present on the target file and monitor the file and countinously display the count of each http code if the file is updated.
2. Inotify-tools-3.14 package was used as a way to know if a file was changed,		
script for installing the package can be found at https://gist.github.com/mani95lisa/6740671
3. Script is executed by using the following format 
		script.sh <target file>
		e.g.
		script.sh /var/log/httpd/access_log
