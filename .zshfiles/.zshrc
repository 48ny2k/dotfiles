# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sonicradish"  #af-magic arrow crunch gallois xiong-chiaiov duellj alanpeabody miloshadzic nicoulaj edvardm sonicradish kafeitu

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

setopt allexport # all parameters defined below are exported

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

# Correction
unsetopt beep
setopt correct
setopt correctall

# Misc
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



