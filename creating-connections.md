---
title: "Creating Remote Connections"
teaching: 5   # teaching time in minutes
exercises: 10 # exercise time in minutes
---

:::::: questions
 - What are rclone remotes?
 - How are they used?
::::::

:::::: objectives
 - Understand the concept of a remote or local connection
 - 
::::::

## Creating a remote connection

An rclone *remote* is a storage service or device that's not part of the local machine, but can be accessed using the rclone command line tool. Rclone remotes can be used to transfer and synchronize files between cloud storage services, servers, and machines. 

This can be an S3 bucket, google drive, box or even a local machine. 

![rclone connections](rclone-connections.jpg)

Below is an example of how to start creating and managing remote connections with rclone. A remote is any storage service or device that's accessed via rclone rather than being directly on your local machine.

To begin configuring a remote connection, open your terminal and run the following command:

```bash
(base) ➜  ~ rclone config
```
After running this command, you'll see output similar to the following. This interactive interface lists your current remotes and provides options for editing, adding, deleting, renaming, copying, or setting a configuration password.

```output
Current remotes:

Name                 Type
====                 ====
box                  box
gdrive               drive
mydrive              drive

e) Edit existing remote
n) New remote
d) Delete remote
r) Rename remote
c) Copy remote
s) Set configuration password
q) Quit config
e/n/d/r/c/s/q>
```


:::::: keypoints
 - rclone remote and local connections
 - Types of cloud storage services that can be connected
::::::
