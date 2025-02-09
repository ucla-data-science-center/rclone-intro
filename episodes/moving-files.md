---
title: "moving files around and knowing what is already there"
output: html_document
date: "2024-03-26"
---


:::::: questions
 - How are files moved or copied
 - What does the *rclone sync* do
 - How do you see what is already in the destination 
 
::::::

:::::: objectives
 - Understand the difference between copy and sync
 - Be able to see what is already in the destination
 - Command line using Linux vs Windows WSL2 subsystem linux
 
::::::

## moving files around

Rclone is most frequently used to move files, individually or as a group from one place to another.


## The syntax for the places, to or from is:

**```source:folder  destination:folder```**


## Moving, syncing and knowing what is already there  

- ```rclone _ls_ remote:path # **lists contents of a remote**```.  
- ```rclone _copy_ /local/path remote:path # **copies&& /local/path to the remote ```  
- ```rclone _sync_ --interactive /local/path remote:path # **syncs** /local/path to the remote ```  

## Filtering 
Rclone commands are often similar to bash commands, such as _ls_ command.   However, Rclone files using the  --include flag.

**Examples:**

My home backup of local to an external drive (windows using linux subsystem)  
```bash
> rclone copy /mnt/d/work-related /mnt/f/work-related-backup   

Copying files from google drive and filtering for '*.txt"    

> rclone copy rclone-intro-google:rclone-intro-google rclone-intro-box:rclone-intro --include "*.txt"  


Checking a result before running by using the _-n_ flag

> rclone sync rclone-intro-google:rclone-intro-google rclone-intro-box:rclone-intro -n    
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

[add 2 more examples]


## Note: Different operating systems have __slightly__ different syntax 

- Windows syntax:   rclone ls C:\\Users\\jjamison\\rclone    
- Windows WSL2 Linux subsystem* Linux syntax:  rclone ls /mnt/c/Users/jjamison/rclone   
- Linux and macOS:    rclone copy rclone-intro-box:rclone-intro rclone-intro-google:rclone-intro-google    
                      rclone copy rclone-intro-box:rclone-intro rclone-intro-google:rclone-intro-google -n   



## valid remote names  
[https://rclone.org/docs/#valid-remote-names](https://rclone.org/docs/#valid-remote-names)


## Reference:   

[https://rclone.org/docs/#subcommands](https://rclone.org/docs/#subcommands)  

Windows [https://rclone.org/docs/#windows](https://rclone.org/docs/#windows)    

Linux  [https://rclone.org/docs/#linux-osx](https://rclone.org/docs/#linux-osx) 

:::::: keypoints
 - Difference between Copy and Sync   
 - See what is already in the destination
 
::::::
