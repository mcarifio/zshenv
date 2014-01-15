# Called by ~.zshrc
here=$(readlink -f $0)

# List of files sourced in this environment.
typeset -A SOURCED=()
 
# Source a list of files, remembering them as you go.
function sources {
   for f in $*; do
     source $f && SOURCED+=($f) 
   done   
}

# Source all files in zshenv/zshrc.d
source $here/zshrc.d/*




# ---- emacs ------
# http://www.gnu.org/software/emacs/manual/html_node/emacs/Specifying-File-Variables.html#Specifying-File-Variables
# Local Variables:
# tab-width: 4
# End:
