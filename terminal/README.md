# Terminal

[Terminal](https://support.apple.com/guide/terminal/welcome/mac) is an application for macOS that provides a command-line interface for interacting with the underlying operating system.

There are _a lot_ of ways to customize and extend Terminal. The sections below touch on a few of them, but there's much more than what's listed here.

## `.bash_profile`

You can do do some serious behind-the-scenes configuration of your bash shell using a `.bash_profile` file (closely related to the `.bashrc` found in other environments). This is a hidden file (because of the `.`) that's usually located in the top-level of your user folder (your `Home` folder on macOS; accessed by the shortcut `~` on the command-line). Armed with that information, go ahead and use your favorite text editor to open it and make changes or create it if it doesn't exist. You'll be able to do things like add locations to your path so they're found when you type a command, set up shortcuts (aliases) for frequently-used commands, customize your command-prompt to be something awesome (like emoji), and more. Feel free to use [this `.bash_profile` file](.bash_profile) as a reference for some things you might add.

## Preferences

You can configure various preferences by opening the application (found in the `/Applications/Utilities` folder) and going to `Terminal` > `Preferences`. You can go through the different sections (some are covered in more detail below) and modify the default settings.

### Profiles

You can change the appearance of your Terminal by going to `Terminal` > `Preferences` > `Profiles`. You can select an existing profile or import a custom one by double clicking the `*.terminal` file you want to import. If that way of importing a profile fails, try the following alternative import steps:

1. Click the gear icon in the lower left corner.
2. Click `Import...`.
3. Select a file with the `.terminal` extension to import it. Now you should be able to select it.

Once you've chosen a profile you're happy with, you make further customizations and then hit `Default` in the lower left corner to save your new profile as the default one. If you're having trouble seeing some of the colors you've chosen for your profile, you may need to add `export CLICOLOR=1` to your `.bash_profile`. I'd recommend reading the [`.bash_profile` section](#bash_profile) above for more information.
