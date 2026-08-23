---
title: 'Reference'
---

## References

Rclone page:  [https://rclone.org/](https://rclone.org/)

Rclone commands: [https://rclone.org/commands/](https://rclone.org/commands/)

## Glossary

Copy 
: A command that transfers new or changed files from the source to the destination without removing any existing files at the destination.

Move  
: A command that transfers files from the source to the destination and then deletes them from the source after verifying a successful transfer.

Sync 
: A command that makes the destination an exact mirror of the source by copying new or updated files and deleting files in the destination that are no longer present in the source.

Remote 
: A named storage configuration, created with `rclone config`, that rclone uses to connect to a storage location such as a cloud service or another machine. You refer to a remote in commands as `remote:path`, for example `mybox:documents`.

Local  
: Refers to the files and directories on your own computer. A local path has no `remote:` prefix, for example `/Users/name/documents` or `C:\Users\name\Documents`.

Filtering  
: The process of selecting specific files for an operation based on criteria, such as filename patterns. In rclone, this is often achieved using flags like `--include`.
