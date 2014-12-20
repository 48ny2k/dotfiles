<<<<<<< HEAD
# moprak's .zshrc
# Complied from the man pages and lots of others's zshrcs
# Note, this zshrc is split into mutiple files (placed under a .zshfiles
# dirctory) for better readability

setopt allexport # all parameters defined below are exported
=======
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8



setopt allexport             # all parameters defined below are exported
>>>>>>> ee9f0ee78d7d74a3168058eb9a7b4f91149a2a08

# Load aliases, exports and functions
source $HOME/.zshfiles/aliases
source $HOME/.zshfiles/exports
source $HOME/.zshfiles/functions

# Input Mode
bindkey -v
source $HOME/.zshfiles/keybindings

# Prompt
autoload -U promptinit
promptinit
# prompt adam2

# History options
HISTFILE=$HOME/.history
HISTSIZE=4096
SAVEHIST=$HISTSIZE
HISTIGNORE='&:clear:ls:cd:[bf]g:exit:[ t\]*'
<<<<<<< HEAD
setopt append_history       # don't _overwrite_ history
setopt inc_append_history   # append history as command are entered
setopt share_history        # share history between shells
setopt hist_verify          # allow correction of !-expressions before running them
setopt hist_ignore_dups     # don't save duplicate entries in history
setopt histignorealldups
setopt histreduceblanks
setopt histignorespace
setopt hist_no_store        # don't save 'history' cmd in history
setopt extended_history     # add timestamps to history
=======
setopt append_history        # don't _overwrite_ history
setopt inc_append_history    # append history as command are entered
setopt share_history         # share history between shells
setopt hist_verify           # allow correction of !-expressions before running them
setopt hist_ignore_dups      # don't save duplicate entries in history
setopt histignorealldups
setopt histreduceblanks
setopt histignorespace
setopt hist_no_store         # don't save 'history' cmd in history
setopt extended_history      # add timestamps to history
>>>>>>> ee9f0ee78d7d74a3168058eb9a7b4f91149a2a08

# Correction
unsetopt beep
setopt correct
setopt correctall

# Misc
<<<<<<< HEAD
setopt clobber              # > and >> work as expected
setopt multios              # Enable piping to multiple outputs
setopt interactivecomments  # Enable comments in interactive mode

# Safe rm
setopt rm_star_wait         # Wait 10 seconds before executing "rm *"
unsetopt rm_star_silent

# Directory Changing
setopt autocd           # Automatically change directory
setopt autopushd        # Use "pushd" instead of "cd", enabling use of "popd"
setopt pushdsilent      # Make "popd" be less verbose (like cd)
setopt pushdignoredups  # Don't record the same directory as multiple entries
setopt pushdtohome
setopt cdable_vars
DIRSTACKSIZE=10         # Limit the number of directories to keep in history
=======
setopt clobber               # > and >> work as expected
setopt multios               # Enable piping to multiple outputs
setopt interactivecomments   # Enable comments in interactive mode

# Safe rm
setopt rm_star_wait          # Wait 10 seconds before executing "rm *"
unsetopt rm_star_silent

# Directory Changing
setopt autocd                # Automatically change directory
setopt autopushd             # Use "pushd" instead of "cd", enabling use of "popd"
setopt pushdsilent           # Make "popd" be less verbose (like cd)
setopt pushdignoredups       # Don't record the same directory as multiple entries
setopt pushdtohome
setopt cdable_vars
DIRSTACKSIZE=10              # Limit the number of directories to keep in history
>>>>>>> ee9f0ee78d7d74a3168058eb9a7b4f91149a2a08

# Job Control
setopt notify
setopt long_list_jobs
setopt nohup
setopt autoresume
setopt autocontinue
unsetopt bg_nice

# Completion, expansion and globbing
setopt automenu
setopt autolist
setopt complete_in_word
setopt always_to_end
setopt menucomplete
setopt listpacked
setopt globdots
setopt extendedglob
setopt markdirs
setopt nomatch
setopt numeric_glob_sort
setopt rc_quotes
setopt rec_exact
unsetopt autoparamslash

# Load completion options
source $HOME/.zshfiles/completion
