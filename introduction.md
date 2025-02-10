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

Rclone is a *command line* program to manage files on cloud storage. After download and install, continue here to learn how to use it: Initial configuration, what the basic syntax looks like, describes the various subcommands, the various options, and more.

Rclone is primarily used for moving, copying, and synchronizing data between your local system and various cloud storage services, making it an essential tool for efficient data management and backups.

![Test Illustration](test-illustration.jpg)

### Disambiguation:  rclone and rsync
Note: Is this section necessary?  Should I explain the difference between rclone and rsync

>Rclone and rsync are command-line tools. Rclone is designed for copying files between cloud servers and a different server or workstation, while rsync offers more advanced features for file synchronization.  

:::::::::::::::::::::::::::::::::::: challenge

## What can you do with rclone?

::::::::::::::::::::::::::::::::::::: solution

With rclone, you can handle your data in several efficient ways:

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

## Real-World Scenarios for Using rclone

Understanding how rclone works can be easier if you relate it to everyday tasks. Here are a few simple examples:

- **Copy:**  
  Imagine you have a folder of vacation photos on your laptop and you want to back them up to Google Drive without removing them from your computer. Using `rclone copy` will duplicate your photos to the cloud, leaving the originals intact.

- **Sync:**  
  Suppose you're working on a project both at home and in the office. You keep a copy of your project folder on your computer and a backup in the cloud. With `rclone sync`, any changes you make locally are automatically mirrored in the cloud folder, keeping them exactly the same.

- **Move:**  
  After completing a project, you might want to free up space on your computer by archiving files to the cloud. The `rclone move` command transfers your project files to cloud storage and then deletes them from your local drive.

These examples show how each rclone command can help you manage your files based on your needs.

:::::: keypoints
 - Uses for rclone
 - Where to find versions for specific operating systems
 - Where to get help.
::::::
