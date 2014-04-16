#!/usr/bin/zsh

# Connect ~/zshenv to your login environment by sourcing additional scripts in ~/.zsh{env,rc}.

here=$(readlink -f $(dirname $0))

cat <EOF >> ~/.zshenv

# Added by $0 on $(date)
# Source ~/zshenv/zshenv.epilog.zsh iff it exists.
[[ -r $here/zshenv.epilog ]] && source $here/zshenv.epilog.zsh
EOF


cat <EOF >> ~/.zshrc

# Added by $0 on $(date)
# Source ~/zshenv/zshrc.epilog.zsh iff it exists.
[[ -r $here/zshrc.epilog ]] && source $here/zshrc.epilog.zsh

EOF


# Make local working storage. Not yet sure this is really necessary.
mkdir --parent $here/{tmp,var/log}
