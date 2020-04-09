# Git

[Git](https://git-scm.com) is a distributed version control system to help manage and track changes for any sized project quickly and efficiently.

## Global

If you're just getting started with Git on your computer for the first time, you might want to look over [the Git documentation](https://git-scm.com/doc) and run some initial global configuration commands. Here are a few common ones:

- Use `git config --global color.ui auto` to colorize Git output.
- Use `git config --global core.editor "YOUR_FAVORITE_EDITOR"` to open Git messages, like commits, in your favorite editor (e.g., `vim`, `nano`, `atom --wait`, `code --wait`, `subl --wait`, etc.).
- Use `git config --global push.default simple` to tell Git to push to the remote upstream branch the current branch is tracking.
- Use `git config --global push.followTags true` to tell Git to push tags.
- Use `git config --global user.email "YOUR_EMAIL_ADDRESS"` to set your email globally or `git config --global --add user.useConfigOnly true` to have Git remind you to set your email on a per-repository basis.
- Use `git config --global user.name "YOUR_NAME"` to set your name.

You can override these settings on a per-repository basis, but these will serve as a default in case you forget or don't need to set them every time you make a new project.

## `.gitignore`

If there are any files or folders you know you don't want to check-in to version control, you can tell Git to ignore them in a `.gitignore` file. This is a hidden file (because of the `.`) that's usually located in the top-level of your project folder. [The `.gitignore` docs](https://git-scm.com/docs/gitignore) and [this collection of samples](https://github.com/github/gitignore) can be helpful for deciding what to add to this file.

### `.gitignore_global`

A special version of a `.gitignore` file called a `.gitignore_global` file can be created to ignore certain files and folders for every project, even if it doesn't have it's own `.gitignore` file. This can be useful for always excluding operating system specific files and folders that don't belong in version control. You can create and use a `.gitignore_global` file by following these steps:

1. Create a file called `.gitignore_global` in the top-level of your user folder (your `Home` folder on macOS; accessed by the shortcut `~` on the command-line).
2. Use [this list of globally useful gitignores](https://github.com/github/gitignore/tree/master/Global) or [this `.gitignore_global` file](.gitignore_global) (note that the `Icon` rules should follow [this format](https://stackoverflow.com/questions/17556250/how-to-ignore-icon-in-git)) as a reference for some rules you might add.
3. Run the command `git config --global core.excludesfile ~/.gitignore_global` to tell Git to use the file you created in steps 1 and 2.

## Hub

[Hub](https://hub.github.com) is a wrapper on top of Git that extends its features/commands and makes it easier to work with GitHub. Definitely check it out if you haven't before!
