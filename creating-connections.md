---
title: "Creating Remote Connections"
teaching: 5   
exercises: 10
---

:::::: questions
 - What are Rclone remotes?
 - How are they used?
 - How do remotes facilitate file transfers and synchronization in rclone?
::::::

:::::: objectives
- Understand what a remote is and how it differs from a local connection.
- Demonstrate how to create and configure a remote connection using rclone config.
- Identify common cloud storage services (e.g., Google Drive, Amazon S3, Box) and understand their roles as remotes.
::::::

## Creating a remote connection

A remote is any storage location not on your local machine. Use Rclone config to connect to services like Google Drive or Amazon S3. Rclone remotes can be used to transfer and synchronize files between cloud storage services, servers, and machines. 

This can be an S3 bucket, Google Drive, Box or even a local machine. 

![rclone connections](rclone-connections.jpg)

::::::::::::::::: callout

### Custom Credentials and Rate Limiting

By default, rclone uses its own `client_id` and `client_secret` for services like Google Workspace and Box. This shared configuration can lead to rate limiting, which may slow down your transfers when many users are accessing these services. To improve performance, consider setting up your own `client_id` and `client_secret`. Detailed setup instructions are available in the [rclone documentation](https://rclone.org/drive/) for Google Drive and the [Box documentation](https://rclone.org/box/).

:::::::::::::::::::::::::



:::::: keypoints
- A remote is any storage location that is not part of your local machine but can be accessed via rclone.
- Remotes enable file transfers and synchronization between various systems, including cloud services (e.g., Google Drive, Amazon S3, Box) and local machines.
- The rclone config command is used to create, manage, and secure remote connections.
- Custom credentials may help avoid rate limiting when using certain cloud services.
::::::
