---
title: "rclone mount"
output: html_document
---


:::::: questions
 - How does rclone mount differ from an rclone remote
 - What is a mountpoint
 - Why might this be useful
 
::::::

:::::: objectives
 - Define "mountpoint"
 - objective 2 
 
::::::
## rclone mount

Mount the remote (connection) as a file system on a *mountpoint*.  

>"Mounting a file system on a mountpoint" means making a file system from a storage device (like a hard drive partition or a network share) accessible to the operating system by attaching it to a specific directory on the local system, called a "mount point," allowing users to access the files within that file system as if they were in the local directory itself; essentially, it's a way to virtually connect a remote file system to your computer for use."   


Rclone mount allows Linux, FreeBSD, macOS and Windows to mount any of Rclone's cloud storage systems as a file system with FUSE.  

rclone mount remote:path/to/files /path/to/local/mount   

rclone mount remote:path/to/files *  
rclone mount remote:path/to/files X:  
rclone mount remote:path/to/files C:\path\parent\mount  
rclone mount remote:path/to/files \\cloud\remote  


## rclone mount vs rclone sync/copy

>rclone mount vs rclone sync/copy
File systems expect things to be 100% reliable, whereas cloud storage systems are a long way from 100% reliable. The rclone sync/copy commands cope with this with lots of retries. However rclone mount can't use retries in the same way without making local copies of the uploads. Look at the VFS File Caching for solutions to make mount more reliable.




## Reference:  [https://rclone.org/commands/rclone_mount/](https://rclone.org/commands/rclone_mount/)

:::::: keypoints
 - Reasons to use rclone mount vs rclone config remote   
 - Understand the concept of mountpoints
 
::::::


