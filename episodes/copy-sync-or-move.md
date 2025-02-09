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

When managing your files with rclone, you have three primary commands to choose from: copy, sync, and move. Each command handles data differently, so it’s important to understand their behaviors before deciding which one to use.

### Copy 

The ```copy``` command duplicates files from the source to the destination. It compares files (using size, modification time, or MD5 checksum) and only transfers those that differ. Importantly, copy does not remove any files from the destination, making it a safe choice when you want to update or add files without risking the loss of existing data.

**Syntax:** 

```bash 
rclone copy source:sourcepath dest:destpath
``` 
**Notes:**

- Only the contents of a directory are copied — not the directory itself.
- Use the ```copyto``` command for copying single files.
- If the destination path does not exist, it will be created.

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
