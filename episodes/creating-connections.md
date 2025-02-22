---
title: "Creating Remote Connections"
teaching: 5   # teaching time in minutes
exercises: 10 # exercise time in minutes
---

:::::: questions
 - What are Rclone remotes?
 - How are they used?
::::::

:::::: objectives
 - Understand the concept of a remote or local connection
 - 
::::::

## Creating a remote connection

A remote is any storage location not on your local machine. Use Rclone config to connect to services like Google Drive or Amazon S3. Rclone remotes can be used to transfer and synchronize files between cloud storage services, servers, and machines. 

This can be an S3 bucket, Google Drive, Box or even a local machine. 

![rclone connections](rclone-connections.jpg)


::::::::::::::::: callout

### CALLOUT (`callout`)

By default, rclone uses its own `client_id` and `client_secret` for services like Google Workspace and Box. This shared configuration can lead to rate limiting, which may slow down your transfers when many users are accessing these services. To improve performance, consider setting up your own `client_id` and `client_secret`. Detailed setup instructions are available in the [rclone documentation](https://rclone.org/drive/) for Google Drive and the [Box documentation](https://rclone.org/box/).

:::::::::::::::::::::::::


:::::: keypoints
 - Rclone remote and local connections
 - Types of cloud storage services that can be connected
::::::
