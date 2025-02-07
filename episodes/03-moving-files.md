---
title: "moving files around and knowing what is already there"
output: html_document
date: "2024-03-26"
---


:::::: questions
 - How are files moved or copied
 - What does the *rclone sync* do
 - How do you see what is already in the destination 
 
::::::

:::::: objectives
 - Understand the difference between copy and sync
 - Be able to see what is already in the destination
 - Command line using Linux vs Windows WSL2 subsystem linux
 
::::::

## moving files around

Rclone is most frequently used to move files, individually or as a group from one place to another.


## The syntax for the places, to or from is:

**source:folder     destination:folder**  

#### or

**local/path  remote/path**   

*Examples:*

### My home backup of local to an external drive (windows using linux subsystem)
>rclone copy /mnt/d/work-related /mnt/f/work-related-backup 

[add 2 more examples]


## Note: Different operating systems have __slightly__ different syntax 

- Windows syntax:   rclone ls C:\Users\jjamison\rclone   
- *Windows WSL2 Linux subsystem* Linux* syntax:  rclone ls /mnt/c/Users/jjamison/rclone
- Linux and macOS:   [add this one]  


## valid remote names  
[https://rclone.org/docs/#valid-remote-names](https://rclone.org/docs/#valid-remote-names)

## Moving, syncing and knowing what is already there  

- rclone **ls** remote:path # **lists contents of a remote**.  
- rclone **copy** /local/path remote:path # **copies&& /local/path to the remote   
- rclone **sync** --interactive /local/path remote:path # **syncs** /local/path to the remote  

## Reference:   

[https://rclone.org/docs/#subcommands](https://rclone.org/docs/#subcommands)  

Windows [https://rclone.org/docs/#windows](https://rclone.org/docs/#windows)    

Linux  [https://rclone.org/docs/#linux-osx](https://rclone.org/docs/#linux-osx) 

:::::: keypoints
 - Difference between Copy and Sync   
 - See what is already in the destination
 
::::::
