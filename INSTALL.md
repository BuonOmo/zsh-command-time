# Installation

* [Oh My Zsh](#oh-my-zsh)
* [Manual](#manual-git-clone)

## Oh My Zsh

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

    ```sh
    git clone https://github.com/BuonOmo/zsh-command-time ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-command-time
    ```

2. Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

    ```sh
    plugins=(zsh-command-time)
    ```

3. Start a new terminal session.

## Manual (Git Clone)

1. Clone this repository somewhere on your machine. This guide will assume `~/.zsh/zsh-command-time`.

    ```sh
    git clone https://github.com/BuonOmo/zsh-command-time ~/.zsh/zsh-command-time
    ```

2. Add the following to your `.zshrc`:

    ```sh
    source ~/.zsh/zsh-command-time/zsh-command-time.zsh
    ```

3. Start a new terminal session.
