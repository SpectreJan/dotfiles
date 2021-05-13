#! /bin/sh

file_list=$(find . -path "./.git" -prune -false -o -not -name '*.sh' -not -name '*light' -type f | cut -c3-)

for f in $file_list
do
    ln -sf $PWD/$f ~/$f
done

echo "Your home dir is now properly fucked!"
