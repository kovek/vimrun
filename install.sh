#!bin/bash


c=0
echo "cp ./myvimrun ~/bin/myvimrun ?"
while [[ $c != 'y' && $c != 'n' ]]
do
  read -n 1 c
done
if [[ $c == 'y' ]]
then
  cp ./myvimrun ~/bin/myvimrun
fi


c=0
echo "cat script.sh >> ~/.bash_profile ?"
while [[ $c != 'y' && $c != 'n' ]]
do
  read -n 1 c
done
if [[ $c == 'y' ]]
then
  cat script.sh >> ~/.bash_profile ?
fi


c=0
echo "cat script.vim >> ~/.vimrc ?"
while [[ $c != 'y' && $c != 'n' ]]
do
  read -n 1 c
done
if [[ $c == 'y' ]]
then
  cat script.vim >> ~/.vimrc
fi

echo "If you answered yes to all these questions, you can now use vimrun!"
