---
title: 'Reference'
---

## References

Rclond page:  [https://rclone.org/](https://rclone.org/)

Rclone commands: [https://rclone.org/commands/](https://rclone.org/commands/)

## Glossary

Copy 
: A command that transfers new or changed files from the source to the destination without removing any existing files at the destination.

Move  
: A command that transfers files from the source to the destination and then deletes them from the source after verifying a successful transfer.

Sync 
: A command that makes the destination an exact mirror of the source by copying new or updated files and deleting files in the destination that are no longer present in the source.

Remote 
: A storage service or device that is not part of your local machine but can be accessed using the rclone command-line tool. This includes cloud services like Google Drive, Dropbox, or Amazon S3, as well as remote servers and external drives.

Local  
: Refers to the files and directories on your own computer.

Filtering  
: The process of selecting specific files for an operation based on criteria, such as filename patterns. In rclone, this is often achieved using flags like `--include`.
