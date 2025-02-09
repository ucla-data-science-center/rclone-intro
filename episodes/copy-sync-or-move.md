---
title: "copy-sync or-move"
output: html_document
date: "2024-03-22"
---

:::::: questions
- What is the difference between copy, sync and move
- When should you choose one command over the others?
::::::
 
::::::

:::::: objectives
- Be able to pick the most appropriate command to mvoe file(s)
- Determine which command is most appropriate for different file management scenarios.
::::::::::::

## Copy vs Sync vs Movd: what is the difference

### Copy 

- Copy files from source to dest, skipping identical files.  
- Copy the source to the destination. Does not transfer files that are identical on source and destination, testing by size and modification time or MD5SUM. Doesn't delete files from the destination. If you want to also delete files from destination, to make it match source, use the sync command instead.  

#####  syntax: ```rclone copy source:sourcepath dest:destpath``` 

Note that it is always the contents of the directory that is synced, not the directory itself. So when source:path is a directory, it's the contents of source:path that are copied, not the directory name and contents.

- To copy single files, use the copyto command instead.  
- If dest:path doesn't exist, it is created and the source:path contents go there.  

### Sync 

- Make source and dest identical, modifying destination only.  
-  Sync the source to the destination, changing the destination only. Doesn't transfer files that are identical on source and destination, testing by size and modification time or MD5SUM. Destination is updated to match source, including deleting files if necessary (except duplicate objects, see below). *If you don't want to delete files from destination, use the copy command instead.*

**Syntax:** 

```bash
rclone sync source:path dest:path
```

### Rclone move command

- Moves the contents of the source directory to the destination directory. Rclone will error if the source and destination overlap and the remote does not support a server-side directory move operation. 
- To move single files, use the *moveto* command instead.

**Important Note:** Since this can cause data loss, test first with the --dry-run or the --interactive/-i flag.

**Syntax:**

```bash 
rclone move source:path dest:path [flags]
```

## Reference:  [https://rclone.org/commands/rclone_move/](https://rclone.org/commands/rclone_move/)

:::::: keypoints
 - Different ways to move or copy files: copy, sync, move   
 - Understand the difference between copy and sync   
::::::
