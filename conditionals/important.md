# Important

```md
-n str1 # str1 is not null (has length greater than 0)
-z str1 # str1 is null (has length 0)

-a file # file exists
-d file # file exists and is a directory
-e file # file exists; same -a
-f file # file exists and is a regular file (i.e., not a directory or other special type of file)
-r file # you have read permission
-s file # file exists and is not empty
-w file # you have write permission
-x file # you have execute permission on file, or directory search permission if it is a directory
-N file # file was modified since it was last read
-O file # you own file
-G file # file's group ID matches yours (or one of yours, if you are in multiple groups)

file1 -nt file2 # file1 is newer than file2
file1 -ot file2 # file1 is older than file2

-lt # less than
-le # less than or equal
-eq # equal
-ge # greater than or equal
-gt # greater than
-ne # not equal
```
