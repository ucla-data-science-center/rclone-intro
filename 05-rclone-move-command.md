---
title: "move command"
output: html_document
date: "2024-03-21"
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## rclone move command

Moves the contents of the source directory to the destination directory. Rclone will error if the source and destination overlap and the remote does not support a server-side directory move operation.

To move single files, use the moveto command instead.

##Important Note:## Since this can cause data loss, ##test first with the --dry-run or the --interactive/-i flag##.


##### syntax: rclone move source:path dest:path [flags]

## Reference:  [https://rclone.org/commands/rclone_move/](https://rclone.org/commands/rclone_move/)


```

