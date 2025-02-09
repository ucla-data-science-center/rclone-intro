---
title: "What is rclone"
teaching: 6
exercises: 2
---


:::::: questions  
 -  What is rclone?  
-   Why might you use this application?  
-   How might rclone help you manage your data?   
::::::  

:::::: objectives  
-   Basic understanding of rclone usage 
-   Know where to download the software and documentation
-   Know where to get help and examples 
::::::

## Introduction: What is rclone?

rclone is a *command line* program to manage files on cloud storage. After download and install, continue here to learn how to use it: Initial configuration, what the basic syntax looks like, describes the various subcommands, the various options, and more.

![Test Illustration](test-illustration.jpg)

### Disambiguation:  rclone and rsync
Note: Is this section necessary?  Should I explain the difference between rclone and rsync

>Rclone and rsync are command-line tools. Rclone is designed for copying files between cloud servers and a different server or workstation, while rsync offers more advanced features for file synchronization.  

:::::::::::::::::::::::::::::::::::: challenge

## What can you do with rclone?

::::::::::::::::::::::::::::::::::::: solution

- Rclone enables efficient file handling for quickly transferring large or multiple files.
- It lets you create reliable backups to secure your data.
- You can perform file transfers seamlessly between your local system and cloud storage.
- It supports directory synchronization to keep folders identical across locations.
- It facilitates direct cloud migration by copying files directly between cloud providers.

::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::: discussion
## How do you think you might use rclone?  

Consider the specific challenges you face with file transfers or cloud storage, and share how you might use rclone to address these issues.

::::::::::::::::::::::::::::::

## rclone command syntax

### ```rclone [command] source:source-folder  destination:destination-folder``` 

List of rclone commands: [https://rclone.org/commands/](https://rclone.org/commands/) 


:::::: keypoints
 - Uses for rclone
 - Where to find versions for specific operating systems
 - Where to get help.
::::::
