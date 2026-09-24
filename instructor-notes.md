---
title: 'Instructor Notes'
---

## Demoing headless configuration ([Optional: Configuring rclone on a Headless Machine](../episodes/headless-configuration.md))

Most learners won't touch this episode, but if you want to demo the headless authorization flow live without a real remote machine on hand, you can simulate one locally with SSH:

1. Enable an SSH server on your own machine (macOS: **System Settings > General > Sharing > Remote Login**; Linux: `sudo systemctl enable --now ssh`; Windows: enable the optional OpenSSH Server feature, then `Start-Service sshd`).
2. Open a second terminal and SSH into yourself: `ssh your_username@localhost`. That second terminal now behaves like a headless remote session — no browser available to it, even though you're still on your own machine.
3. In that second terminal, run `rclone config` and start creating a remote that needs OAuth (Box or Google Drive). When it reaches the authorization step, it prints an `rclone authorize <backend>` command instead of opening a browser.
4. Copy that command into your *first* terminal (which does have a browser) and run it there. Complete the sign-in flow, then paste the token it prints back into the headless (second-terminal) session to finish.

This gives learners a real, live look at the headless flow without needing a spare HPC account or cloud VM in the room. (Source: [issue #8](https://github.com/ucla-data-science-center/rclone-intro/issues/8).)
