---
title: "Getting Help"
teaching: 10
exercises: 5
---

:::::: questions
- Where do I get help using rclone?
- What are some key resources for troubleshooting and learning advanced features?
::::::

:::::: objectives
- Know where to find comprehensive documentation and support for rclone.
- Identify community resources and forums that can assist with troubleshooting.
::::::

## Getting Help with Rclone

Rclone offers extensive documentation and community support to help you solve issues and learn advanced features. Here are some key resources:

### Official Documentation
  Visit the [rclone documentation website][rclone-docs] for detailed guides on installation, configuration, and usage of various commands. Use the search feature to look up specific topics such as configuration commands or remote storage names.

### Community Forums and Support

  - Check out the [rclone GitHub repository](https://github.com/rclone/rclone) for bug reports, feature requests, and discussions.
  - Explore community forums and mailing lists where other users share tips and solutions.
  - Use platforms like [StackOverflow](https://stackoverflow.com/questions/tagged/rclone) to ask questions and find answers from experienced users.

### Command Help

  For a list of every available command, run:
  ```bash
  rclone help
  ```
  or get details on a particular command, including its flags, by adding `--help` after the command name:
  ```bash
  rclone copy --help
  ```

These resources are invaluable whether you’re troubleshooting an issue or looking to explore advanced functionality.

::::::::::::::::::::::::::::::::::::: challenge

## Find a flag

Run `rclone sync --help` and find the flag that lets you preview what a sync would do without actually deleting or transferring anything.

:::::::::::::::: hint

You've already used this flag several times earlier in the lesson.

::::::::::::::::::::::

:::::::::::::::: solution

`-n, --dry-run` — the same flag introduced in [Creating and Configuring Remote Connections](creating-connections.html) and used throughout the transfer episodes. `rclone <command> --help` is the fastest way to rediscover a flag you've forgotten, without leaving the terminal.

::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::

:::::: keypoints
- Rclone’s official documentation is available at [rclone.org][rclone-docs].
- Community support is accessible through GitHub, forums, and StackOverflow.
- Use `rclone help` for quick command-line assistance.
::::::
