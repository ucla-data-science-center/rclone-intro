---
title: 'Reference'
---

## References

Rclone page:  [rclone.org][rclone-docs]

Rclone commands: [rclone.org/commands/][rclone-commands]

### Command reference

- `rclone config` — [rclone.org/commands/rclone_config/](https://rclone.org/commands/rclone_config/)
- `rclone listremotes` — [rclone.org/commands/rclone_listremotes/](https://rclone.org/commands/rclone_listremotes/)
- `rclone config file` — [rclone.org/commands/rclone_config_file/](https://rclone.org/commands/rclone_config_file/)
- `rclone move` — [rclone.org/commands/rclone_move/](https://rclone.org/commands/rclone_move/)
- Important flags (`--dry-run`, `--interactive`, `--verbose`) — [rclone.org/flags/#important](https://rclone.org/flags/#important)
- Remote setup, including headless authorization — [rclone.org/remote_setup/][rclone-remote-setup]

### Platform-specific syntax

- Valid remote names — [rclone.org/docs/#valid-remote-names](https://rclone.org/docs/#valid-remote-names)
- Subcommand syntax — [rclone.org/docs/#subcommands](https://rclone.org/docs/#subcommands)
- Windows — [rclone.org/docs/#windows](https://rclone.org/docs/#windows)
- Linux/macOS — [rclone.org/docs/#linux-osx](https://rclone.org/docs/#linux-osx)

## Glossary

Copy 
: A command that transfers new or changed files from the source to the destination without removing any existing files at the destination.

Move  
: A command that transfers files from the source to the destination and then deletes them from the source after verifying a successful transfer.

Sync 
: A command that makes the destination an exact mirror of the source by copying new or updated files and deleting files in the destination that are no longer present in the source.

Remote 
: A named storage configuration, created with `rclone config`, that rclone uses to connect to a storage location such as a cloud service or another machine. You refer to a remote in commands as `remote:path`, for example `mybox:documents`.

Local  
: Refers to the files and directories on your own computer. A local path has no `remote:` prefix, for example `/Users/name/documents` or `C:\Users\name\Documents`.

Filtering  
: The process of selecting specific files for an operation based on criteria, such as filename patterns. In rclone, this is often achieved using flags like `--include`.
