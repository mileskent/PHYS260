#!/bin/bash

start="\e["
green="32m"
end="\e[0m"
t="$HOME/.config/nvim"
pt=$start$green$t

if [ -d $t ]; then
    echo -e "Moving $pt$end to $pt.bak$end"
    mv -T $t "$t.bak"
fi

echo -e "Creating new \"$pt$end\""
mkdir -p $t

git clone https://github.com/mileskent/Dotfiles "$HOME/.temp"
echo
echo "Copying files"
cp -rv $HOME/.temp/vimtexsetup/* $t/

rm -rf "$HOME/.temp"

yay -S texinfo texlive-basic texlive-bin texlive-binextra texlive-fontsrecommended texlive-latex texlive-latexrecommended texlivemathscience




