#!/usr/bin/zsh

cat <EOF >> ~/.zshenv
[[ -r ~/zshenv/zshenv.epilog ]] && source ~/zshenv/zshenv.epilog
EOF


cat <EOF >> ~/.zshrc
[[ -r ~/zshenv/zshrc.epilog ]] && source ~/zshenv/zshrc.epilog
EOF
