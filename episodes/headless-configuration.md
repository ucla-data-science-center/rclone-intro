---
title: "Optional: Configuring rclone on a Headless Machine"
teaching: 10
exercises: 5
---

:::::: questions
 - What is a headless machine, and why does it need special configuration?
 - How do you authorize a remote when no browser is available?
::::::

:::::: objectives
 - Identify when a machine is headless and needs a browser-free authorization flow.
 - Use `rclone authorize` to complete configuration on a headless machine.
::::::

::::::::::::::::: callout

### This episode is optional

Skip this episode if you're setting up rclone on your own laptop or desktop — you have a browser, and the standard `rclone config` flow from [Creating and Configuring Remote Connections](creating-connections.html) is all you need. Come back to this episode only if you need to configure rclone on a machine with no browser available, such as an HPC cluster, a cloud VM, or the Windows Subsystem for Linux (WSL2).

:::::::::::::::::::::::::

## What is a headless machine?

A *headless* machine is one with no browser available to complete authorization in. For example, you might be using the Windows Subsystem for Linux (WSL2), or you've logged into a remote machine (an HPC cluster, a cloud VM, etc.) over SSH.

Some rclone configurations — those involving OAuth2, such as Box and Google Drive — normally open a browser to complete authorization. On a headless machine, there's no browser to open, so rclone offers an alternative: authorize from a *different* machine that does have a browser.

## Authorizing without a browser

When `rclone config` reaches the authorization step on a headless machine, it prints a command to run instead of opening a browser, using `rclone authorize`:

```bash
rclone authorize box
```

Run that command on a different machine — one that *does* have a browser, such as your laptop — and it walks you through the same sign-in flow, then prints a token to paste back into the headless machine's `rclone config` session.

Rclone's documentation includes a full walkthrough of this exact process: [Configuring using rclone authorize][rclone-authorize].

::::::::::::::::::::::::::::::::::::: challenge

## Headless or not?

For each situation, decide whether you'd need `rclone authorize`, or whether the standard `rclone config` flow is enough.

1. Configuring rclone on your own laptop, which has a web browser installed.
2. Configuring rclone after logging into a university HPC cluster over SSH.
3. Configuring rclone inside the Windows Subsystem for Linux (WSL2) on your own PC.

:::::::::::::::: solution

1. Standard `rclone config` — your laptop has a browser, so authorization happens automatically.
2. `rclone authorize` — an HPC cluster accessed over SSH has no browser of its own.
3. `rclone authorize` — WSL2 is a separate Linux environment with no browser, even though it's running on a PC that has one.

::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::

See the [Learner Reference](../learners/reference.md) page for a full command and documentation reference.

:::::: keypoints
 - A headless machine has no browser, so OAuth-based remotes (Box, Google Drive) need a separate authorization step.
 - Run `rclone authorize <backend>` on a machine with a browser, then paste the resulting token back into the headless machine's config session.
 - Most learners working on their own laptop can skip this episode entirely.
::::::
