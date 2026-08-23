---
title: "Rclone config command"
teaching: 15
exercises: 5
---

:::::: questions
 - Once installed, how is Rclone set up or configured?
 - How do you check for and edit existing configurations?
::::::

:::::: objectives
 - Use `rclone config` to create and manage remote connections
 - Identify useful command flags such as `--dry-run`, `--interactive`, and `--verbose`
::::::

## Rclone config command

The `rclone config` command enters an interactive configuration session where you can set up new remotes, and edit and manage existing ones.

## Syntax

```bash
rclone config [flags]
```

```bash
rclone config
```

```output
2025/04/03 07:25:18 NOTICE: Config file "/Users/timdennis/.config/rclone/rclone.conf" not found - using defaults
No remotes found, make a new one?
n) New remote
s) Set configuration password
q) Quit config
n/s/q>
```

## Rclone command flags

There are numerous command flags but these three are especially worth remembering:


- **-n, --dry-run**         Do a trial run with no permanent changes
- **-i, --interactive**     Enable interactive mode
- **-v, --verbose count**   Print lots more stuff (repeat for more) - useful when debugging  

## Documentation specific to each remote

Rclone includes extensive documentation that is specific to particular remotes.

Examples:   

- Box: [https://rclone.org/box/](https://rclone.org/box/)  
- Google Drive: [https://rclone.org/drive/](https://rclone.org/drive/)  
- S3 bucket: [https://rclone.org/s3/](https://rclone.org/s3/)  

## Reference   

[https://rclone.org/remote_setup/](https://rclone.org/remote_setup/)  

[https://rclone.org/commands/rclone_config/](https://rclone.org/commands/rclone_config/)

[https://rclone.org/flags/#important](https://rclone.org/flags/#important)

:::::: keypoints
 - Understand how configuration is used.  
 - Familiar with useful command flags: dry-run, interactive and verbose.
 - Use config to create remote connections
 - Know where to get help.
::::::
