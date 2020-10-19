# macOS

[macOS](https://www.apple.com/macos) is an operating system developed by [Apple](https://www.apple.com) and used on their [Mac](https://www.apple.com/mac) line of computers.

Like any operating system, there's a lot to learn and customize, and this documentation will barely scratch the surface. The sections below touch on a few options, but you'll undoubtedly want to do some more exploration on your own.

## Bootstrapping

If you're kind of tech-savvy and want to get a quick start setting up your Mac, you can check out this [`set-up-mac.sh`](set-up-mac.sh) script that will automate some initial getting started steps for you. It uses a combination of [Homebrew](https://brew.sh), Homebrew Cask, and product-specific installers to automatically bootstrap your computer with some utilities, programming languages, and applications.

Before running the script, you should look it over to make sure you're okay with what it's going to install (links are provided in the sections below). If there's anything you don't want installed, just remove it. Once you're comfortable with the script, you can use it by following these steps:

1. Create a file somewhere named `set-up-mac.sh`.
2. Copy and paste the contents of this repo's [`set-up-mac.sh`](set-up-mac.sh) script into the file you created in step 1.
3. Open your favorite command-line application (like Terminal) and navigate to the directory where you created the file in step 1.
4. Use the command `chmod +x set-up-mac.sh` to make the script executable.
5. Start the script with the command `./set-up-mac.sh` and wait for it to finish!

### Utilities

- [bash-completion](https://github.com/scop/bash-completion)
- [Git](https://git-scm.com)
  - [GitHub CLI](https://cli.github.com)
- [rmtrash](https://github.com/PhrozenByte/rmtrash)

### Programming Languages

- [Node.js](https://nodejs.org)
  - [npm](https://www.npmjs.com)
  - [npx](https://www.npmjs.com/package/npx)

### Applications

- [Android Messages Desktop](https://github.com/chrisknepper/android-messages-desktop)
- [AppCleaner](https://freemacsoft.net/appcleaner)
- [Brave](https://brave.com)
- [Figma](https://www.figma.com)
- [Firefox](https://www.mozilla.org/firefox)
- [Google Backup and Sync](https://www.google.com/drive)
- [ImageOptim](https://imageoptim.com/mac)
- [Kap](https://getkap.co)
- [Rectangle](https://rectangleapp.com)
- [Rocket](https://matthewpalmer.net/rocket)
- [Slack](https://slack.com)
- [Spotify](https://www.spotify.com)
- [TomTom Sports Connect](https://us.support.tomtom.com/app/getstarted/p/3863)
- [Visual Studio Code](https://code.visualstudio.com) (+ [extensions](https://github.com/pdhoopr/dotfiles/tree/master/visual-studio-code#extensions))

## Finder Preferences

Finder is the default file explorer for Mac. You can get to the preferences for Finder by following these steps:

1. Open Finder by clicking the Finder icon (the blue and white face) on your Dock.
2. Go to the `Finder` > `Preferences` menu.

## System Preferences

System Preferences is where many of the settings for customizing your Mac are located. You can get to the System Preferences a couple of different ways:

- Click the Apple menu icon and then go to `System Preferences`.
- Open System Preferences (from the `/Applications` folder or your Dock).
