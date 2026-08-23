---
title: "File Transfers, Listing, and Verification"
teaching: 15
exercises: 10
---


:::::: questions
 - How are files moved or copied?
 - What does the *rclone sync* do?
 - How do you see what is already in the destination?  
 
::::::

:::::: objectives
 - Understand the difference between copy and sync
 - Be able to list what is already in the destination
 - Compare rclone command syntax between Linux/macOS and Windows (including WSL2)
::::::

## Moving files around

Rclone is most frequently used to move files, individually or as a group from one place to another.

## Specifying source and destination paths

```bash
source:folder  destination:folder
```
## Moving, syncing and knowing what is already there  

Lists contents of a remote: 

```bash
rclone ls remote:path
```
Copy local files to remote: 

```bash
rclone copy /local/path remote:path # copies /local/path to the remote
```

Sync local files to remote: 

```bash
rclone sync --interactive /local/path remote:path # syncs /local/path to the remote
```  

## Filtering 

Many rclone commands resemble their Unix counterparts, such as `ls`. Rclone selects which files a command applies to using flags such as `--include` and `--exclude`, rather than shell wildcard expansion, so quote the pattern (for example, `--include "*.txt"`) to keep your shell from expanding it first.

**Some Examples:**

Copying local files to an external drive (Windows using the Linux subsystem)

```bash
rclone copy /mnt/d/work-related /mnt/f/work-related-backup   
```

Copying files from Google Drive and filtering for `*.txt`

```bash
rclone copy rclone-intro-google:rclone-intro-google rclone-intro-box:rclone-intro --include "*.txt"  
```
Checking a result before running by using the `-n` flag

```bash
rclone sync rclone-intro-google:rclone-intro-google rclone-intro-box:rclone-intro -n
```
```output    
2025/02/09 14:52:11 NOTICE: Beans, Snap and Italian – Pieces, Green and Wax - National Center for Home Food Preservation.pdf: Skipped copy as --dry-run is set (size 91.581Ki)
2025/02/09 14:52:11 NOTICE: For Safety's Sake - National Center for Home Food Preservation.pdf: Skipped copy as --dry-run is set (size 69.982Ki)
2025/02/09 14:52:11 NOTICE: Preserving_Food__Using_Pressure_Canners.pdf: Skipped copy as --dry-run is set (size 3.839Mi)
2025/02/09 14:52:11 NOTICE: Selecting the Correct Processing Time - National Center for Home Food Preservation.pdf: Skipped copy as --dry-run is set (size 123.316Ki)
2025/02/09 14:52:11 NOTICE: test01.txt.docx: Skipped copy as --dry-run is set
2025/02/09 14:52:11 NOTICE: USDA-Complete-Guide-to-Home-Canning-2015-revision.pdf: Skipped copy as --dry-run is set (size 16.518Mi)
2025/02/09 14:52:11 NOTICE: Potatoes, Sweet – Pieces or Whole - National Center for Home Food Preservation.pdf: Skipped copy as --dry-run is set (size 87.602Ki)
2025/02/09 14:52:11 NOTICE:
Transferred:       21.079 MiB / 21.079 MiB, 100%, 0 B/s, ETA -
Checks:                 3 / 3, 100%
Transferred:            8 / 8, 100%
Elapsed time:         2.0s
```

::::::::::::::::::::::::::::::::::::: challenge

## Predict, then verify

You have a disposable `rclone-workshop` folder with these files:

```output
source/notes.txt
source/data.csv
source/photo.jpg
dest/old-report.pdf
```

`dest/old-report.pdf` does not exist in `source`.

Before running anything, predict the answers:

1. Will `rclone copy source dest --include "*.txt" --dry-run` touch `old-report.pdf`?
2. Will `rclone sync source dest --dry-run` touch `old-report.pdf`? If so, how?

Then run both commands against your own disposable folder and check your predictions against the real output.

:::::::::::::::: hint

`--dry-run` never changes anything on disk — it only reports what *would* happen, which makes it safe to run as many times as you like while you're predicting.

::::::::::::::::::::::

:::::::::::::::: solution

```bash
rclone copy source dest --include "*.txt" --dry-run -v
```

```output
2026/08/23 13:37:13 NOTICE: notes.txt: Skipped copy as --dry-run is set (size 14)
2026/08/23 13:37:13 NOTICE: 
Transferred:   	         14 B / 14 B, 100%, 0 B/s, ETA -
Checks:                 0 / 0, -, Listed 1
Transferred:            1 / 1, 100%
Elapsed time:         0.0s
```

`copy` never mentions `old-report.pdf` — it only ever adds or updates files, so anything already at the destination but missing from the source is simply left alone.

```bash
rclone sync source dest --dry-run -v
```

```output
2026/08/23 13:37:14 NOTICE: notes.txt: Skipped copy as --dry-run is set (size 14)
2026/08/23 13:37:14 NOTICE: photo.jpg: Skipped copy as --dry-run is set (size 6)
2026/08/23 13:37:14 NOTICE: data.csv: Skipped copy as --dry-run is set (size 6)
2026/08/23 13:37:14 NOTICE: old-report.pdf: Skipped delete as --dry-run is set (size 34)
2026/08/23 13:37:14 NOTICE: 
Transferred:   	         26 B / 26 B, 100%, 0 B/s, ETA -
Checks:                 1 / 1, 100%, Listed 4
Deleted:                1 (files), 0 (dirs), 34 B (freed)
Transferred:            3 / 3, 100%
Elapsed time:         0.0s
```

`sync` reports `old-report.pdf` as a file it would **delete**, because sync makes the destination an exact mirror of the source — this is exactly why sync exercises always need `--dry-run` or `--interactive` first.

::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::

## Different operating systems have __slightly__ different syntax 

Windows syntax:
 
```bash
rclone ls C:\Users\jjamison\rclone
rclone ls "C:\Users\jjamison\My Documents\rclone-workshop"
```
- Linux and macOS:

```bash
rclone copy rclone-intro-box:rclone-intro rclone-intro-google:rclone-intro-google    
rclone copy rclone-intro-box:rclone-intro rclone-intro-google:rclone-intro-google -n   
```
Windows Subsystem for Linux (WSL2) syntax:  

```bash
rclone ls /mnt/c/Users/jjamison/rclone   
```

See the [Learner Reference](../learners/reference.md) page for valid remote names, subcommand syntax, and platform-specific notes.

:::::: keypoints
 - Difference between Copy and Sync   
 - See what is already in the destination
 - `--dry-run` shows what a command would do, including deletions, without changing anything on disk
 
::::::
