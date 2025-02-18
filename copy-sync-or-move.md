---
title: "Choosing the Right Rclone Command: Copy, Sync, or Move"
teaching: 15
exercises: 10
---

:::::: questions
- What is the difference between copy, sync and move?
- When should you choose one command over the others?
::::::

:::::: objectives
- Be able to pick the most appropriate command to mvoe file(s)
- Determine which command is most appropriate for different file management scenarios.
::::::::::::

## Copy, Sync, or Move

When managing your files with rclone, you have three primary commands: **copy**, **sync**, and **move**. Each command handles your data differently, so it's important to know their unique behaviors to choose the right one for your task.

### Copy 

The `copy` command duplicates files from the source to the destination. It compares files (by size, modification time, or MD5 checksum) and transfers only those that are new or have changed. Copying does not delete any files at the destination, making it safe when you simply want to update or add files.

**Syntax:** 

```bash 
rclone copy source:sourcepath dest:destpath
``` 
**Notes:**

- Only the contents of a directory are copied — not the directory itself.
- Use the ```copyto``` command for copying single files.
- If the destination path does not exist, it will be created.

### Sync 

The sync command makes the destination an exact mirror of the source. It copies new or updated files and deletes files in the destination that are not present in the source. Use sync when you need both locations to be identical, but be cautious as it can remove files from the destination.

**Syntax:** 

```bash
rclone sync source:path dest:path
```

### Move 

The move command transfers files from the source to the destination and then deletes them from the source after a successful transfer. This is useful when you want to relocate files rather than keep copies in both places.

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
