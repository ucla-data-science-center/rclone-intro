---
title: "What is Rclone"
teaching: 10
exercises: 5
---


:::::: questions  
 -  What is Rclone?  
-   Why might you use this application?  
-   How might Rclone help you manage your data?   
::::::  

:::::: objectives  
-   Basic understanding of Rclone usage 
-   Know where to download the software and documentation
-   Know where to get help and examples 
::::::

## Introduction: What is Rclone?

Rclone is a command-line program for managing files on cloud storage. It is primarily used  for transferring, syncing, and moving data between local systems and various cloud storage services. 

![Test Illustration](test-illustration.jpg)


:::::::::::::::::::::::::::::::::::: challenge

## What can you do with Rclone?

::::::::::::::::::::::::::::::::::::: solution

With Rclone, you can handle your data in several efficient ways:

- Rclone enables efficient file handling for quickly transferring large or multiple files.
- It lets you create reliable backups to secure your data.
- You can perform file transfers seamlessly between your local system and cloud storage.
- It supports directory synchronization to keep folders identical across locations.
- It facilitates direct cloud migration by copying files directly between cloud providers.

::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::: discussion
## How do you think you might use Rclone?  

Consider the challenges you face with file transfers or cloud storage, and share how you might use Rclone to address these issues.

::::::::::::::::::::::::::::::

## Rclone command syntax

## `rclone [command] source:source-folder  destination:destination-folder`

List of Rclone commands: [https://rclone.org/commands/](https://rclone.org/commands/) 

## Real-World Scenarios for Using Rclone

Understanding how Rclone works can be easier if you relate it to everyday tasks. Here are a few simple examples:

- **Copy:**  
  Imagine you have a folder of vacation photos on your laptop and want to back them up to Google Drive without removing them from your computer. Using `rclone copy` will duplicate your pictures to the cloud, leaving the originals intact.

- **Sync:**  
  Suppose you're working on a project at home and in the office. You keep a copy of your project folder on your computer and a backup in the cloud. With `rclone sync`, any changes you make locally are automatically mirrored in the cloud folder, keeping them the same.

- **Move:**  
  After completing a project, you can free up space on your computer by archiving files to the cloud. The `rclone move` command transfers your project files to cloud storage and deletes them from your local drive.

These examples show how each rclone command can help you manage your files based on your needs.

:::::: keypoints
 - Uses for Rclone
 - Where to find versions for specific operating systems
 - Where to get help
::::::
