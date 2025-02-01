---
title: "rclone config command"
output: html_document
---

:::::: questions
 - Once installed, how is rclone setup or configured?
 - How to check for and edit existing configurations
::::::

:::::: objectives
 - Use config to create remote connections
 - Knowledge of useful command flags (or 'options')
::::::

## rclone config command: 

Enter an interactive configuration session where you can setup new remotes and manage existing ones. 

You may also set or remove a password to protect your configuration.

## syntax:  
**rclone config [flags]**
 
![rclone config ](rclone-config-screen-image.jpg)  
sand

![rclone config edit ](rclone-config-interactive.JPG)


## rclone command flags

There are numerous command flags but these three are especially worth remembering:


- **-n, --dry-run**         Do a trial run with no permanent changes
- **-i, --interactive**     Enable interactive mode
- **-v, --verbose count**   Print lots more stuff (repeat for more) - useful when debugging

## References

[https://rclone.org/commands/rclone_config/](https://rclone.org/commands/rclone_config/)

[https://rclone.org/flags/#important](https://rclone.org/flags/#important)

:::::: keypoints
 - Understand how configuration is used.  
 - Familiar with useful command flags: dry-run, interactive and verbose.
 - Use config to create remote connections
 - Know where to get help.
::::::
