# Intended to be called by ~.zshenv at the end.

here=$(readlink -f $0)

# XXX This is in the wrong place
# Load and run compinit
autoload -U compinit
compinit -i -d ~/.zcompdump


# List of files sourced in this environment.
typeset -A SOURCED=($0)
 
# Source a list of files, remembering them as you go.
function sources {
   for f in $*; do
     source $f && SOURCED+=($f) 
   done   
}




# Source all files in zshenv/zshrc.d/*.source.zsh
sources $here/zshenv.d/*.source.zsh





# ---- emacs ------
# http://www.gnu.org/software/emacs/manual/html_node/emacs/Specifying-File-Variables.html#Specifying-File-Variables
# Local Variables:
# tab-width: 4
# End:
