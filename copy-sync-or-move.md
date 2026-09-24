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
- Be able to pick the most appropriate command to move file(s)
- Determine which command is most appropriate for different file management scenarios.
::::::::::::

## Copy, Sync, or Move

When managing your files with rclone, you have three primary commands: **copy**, **sync**, and **move**. Each command handles your data differently, so it's important to know their unique behaviors to choose the right one for your task.

| Command | Changes source | Adds/updates at destination | Deletes at destination | Safest for... |
|---|---|---|---|---|
| `copy` | No | Yes | No | Adding or updating files without any risk of deleting something |
| `sync` | No | Yes | Yes — removes anything not in the source | Making the destination an exact, up-to-date mirror of the source |
| `move` | Removes files after a successful transfer | Yes | No | Relocating files to free up space at the source |

### Copy 

The `copy` command copies files from the source to the destination. It compares files by size, modification time, or checksum, and transfers only those that are new or have changed. Existing destination files that aren't present at the source are left in place — `copy` does not delete them. Because of this, `copy` does not guarantee the destination matches the source, so running it once is not, by itself, a complete backup strategy.

**Syntax:** 

```bash 
rclone copy source:sourcepath dest:destpath
``` 
**Notes:**

- Only the contents of a directory are copied — not the directory itself.
- Use the `copyto` command for copying single files.
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

::::::::::::::::::::::::::::::::::::: challenge

## Choose the right command

For each scenario, decide whether `copy`, `sync`, or `move` is the safest choice, and explain why.

1. You want your Box `photos` folder to always exactly match a folder on your laptop, including removing anything you've deleted locally.
2. You've finished a project and want to free up space on your laptop by relocating the files to the cloud.
3. You want to hand a colleague a copy of your files without touching anything already in their folder, or removing anything from yours.

:::::::::::::::: hint

Ask two questions for each scenario: should anything be deleted anywhere, and should the files still exist in both places afterward?

::::::::::::::::::::::

:::::::::::::::: solution

1. **sync** — an exact mirror, including deletions, is exactly what sync does. Run it with `--dry-run` or `--interactive` first, since it can delete files.
2. **move** — moves the files and removes them from your laptop only after the transfer to the cloud succeeds.
3. **copy** — adds and updates files at the destination without deleting anything at either end.

::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::

See the [Learner Reference](../learners/reference.md) page for a full command and documentation reference.

:::::: keypoints
 - Different ways to move or copy files: copy, sync, move   
 - Understand the difference between copy and sync   
 - `sync` is the only one of the three that can delete files at the destination
::::::
