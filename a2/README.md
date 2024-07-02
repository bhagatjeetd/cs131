#Tempcleaner
##What this command does
Helps the user manage and clean up  temporary files in a specified directory.
It allows the user to delete files that are older than a specified amount of days and logs the deleted files to help users know what files they have deleted.

##Why/When this command is useful
1. Clean up directories containing temporary files to free up disk space
2. Manage directories when old files have to be constantly deleted
3. Automate the deletion process to avoid doing it manually

##How you can use this command
1. Install the script and make it executable
2. open your terminal
3. Run the command followed by the directory you want to clean up
4. Follow the prompts to specify the age of files to delete and confirm the operation

##Example
$ tempcleaner /temp
Enter the age of files to delete(in days): 7
This will delete all files older than 7 days in /temp.
Are you sure? (y/n): y
Deleted files have been logged to deleted_files.log.
Operation completed.
