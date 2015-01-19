#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#
#  Sections:
#  1.   ENVIRONMENT CONFIGURATION
#  2.   MENVIRONMENT CONFIGURATION
#  3.   APPLE
#  4.   WEB DEVELOPMENT
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    }
    export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)$ "
    export PATH="/usr/local/mysql/bin:$PATH"
    export PATH="/Users/benjamin/Node/mongodb/bin:$PATH"

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
   export CLICOLOR=1
   export LSCOLORS=ExFxBxDxCxegedabagacad


#   -----------------------------
#   2.  ENVIRONMENT CONFIGURATION
#   -----------------------------

alias cd..='cd ../'                                                           # Go back 1 directory level (for fast typers)
alias ls='ls -a'                                                              # Show all files
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'  # edit: Opens any file in sublime editor


#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   ---------------------------------------
#   3.  APPLE
#   ---------------------------------------
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

#   ---------------------------------------
#   4.  WEB DEVELOPMENT
#   ---------------------------------------
alias createVhost='sudo /Users/benjamin/Sites/vhosts-generator.sh'                    # createVhost       Create vhost
alias apacheEdit='sudo vim /etc/httpd/httpd.conf'                                     # apacheEdit:       Edit httpd.conf
alias apacheRestart='sudo apachectl graceful'                                         # apacheRestart:    Restart Apache
alias editHosts='sudo vim /etc/hosts'                                                 # editHosts:        Edit /etc/hosts file
alias herr='tail /var/log/httpd/error_log'                                            # herr:             Tails HTTP error logs
alias apacheLogs="less +F /var/log/apache2/error_log"                                 # Apachelogs:       Shows apache error logs
alias sfBuild="php symfony doctrine:build --all --and-load --no-confirmation"         # sfBuild:          Build symfony project
httpHeaders () { /usr/bin/curl -I -L $@ ; }                                           # httpHeaders:      Grabs headers from web page
alias arc="/Users/benjamin/Sites/arcanist/bin/arc"
#   ---------------------------------------
#   4.  CORDOVA
#   ---------------------------------------
export PATH=${PATH}:/Users/benjamin/adt-bundle/sdk/platform-tools/:/Users/benjamin/adt-bundle/sdk/tools/


##
# Your previous /Users/benjamin/.bash_profile file was backed up as /Users/benjamin/.bash_profile.macports-saved_2014-10-20_at_15:20:45
##

# MacPorts Installer addition on 2014-10-20_at_15:20:45: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/usr/local/apache-ant/bin:"$PATH"
