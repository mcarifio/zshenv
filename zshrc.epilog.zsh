# Called by ~.zshrc
here=$(readlink -f $0)

# Source all files in zshenv/zshrc.d
sources $here/zshrc.d/*


# ---- emacs ------
# http://www.gnu.org/software/emacs/manual/html_node/emacs/Specifying-File-Variables.html#Specifying-File-Variables
# Local Variables:
# tab-width: 4
# End:
