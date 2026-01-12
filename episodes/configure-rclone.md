---
title: "Rclone config command"
teaching: 15
exercises: 5
---

:::::: questions
 - Once installed, how is Rclone setup or configured?
 - How to check for and edit existing configurations
 - what is a remote/headless machine 
 
::::::

:::::: objectives
 - Use config to create remote connections
 - Knowledge of useful command flags (or 'options') 
 - Configure a remote connection for a machine with no browser available (ie. headless) 
 
::::::

## Rclone config command: 

The *rclone config" command enteres an interactive configuration session where you can setup new remotes, edit and manage existing ones. 

## Syntax:  

**`Rclone config [flags]`**

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

[live-code a setting up a simple remote]

## Walk through configuring a local machine  
 

## Walk through configuring a remote that requires authorization   
 

We are going to walk through this but here is an example from the Rclone documentation [https://rclone.org/remote_setup/#configuring-using-rclone-authorize](https://rclone.org/remote_setup/#configuring-using-rclone-authorizef).


## Documentation Specific to Remote    

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
