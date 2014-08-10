alias vimd=mvimfunction
mvimfunction(){
    mvim $1 &
    trap `cd -` EXIT
    if [[ $2 == "-t" ]]
    then
      cd `dirname $1`
    elif [[ $2 == "-c" ]]
    then
      cd $3
    else
      cd .
    fi
    vimloop;
}

vimloop(){
  #!/bin/bash
  trap "rm ~/vimpipe; cd -" EXIT
  if [[ -f ~/vimpipe ]]
  then
    rm ~/vimpipe
  fi
  if ! [[ -p ~/vimpipe ]]
  then
      mkfifo ~/vimpipe
  fi
  while true
      do
        echo ">>>>>>>>>>>>>>>listening>>>>>>>>>>>>>>>"
        eval $(tail -n 1 ~/vimpipe)
        echo "<<<<<<<<<<<<<<<finished<<<<<<<<<<<<<<<"
      done
  exit 0
}

