#!/bin/bash

sayHello(){
  echo "Wie heisst du?"
  read user
  
  welcome="Hallo du, wie gehts dir ${user} ?"
  echo $welcome
  espeak -v german "$welcome"
  
  if [[ "$user" == "Fritz" ]]; then
    special="Schön, dass du da bist!"
    echo $special
    espeak -v german "$special"
  fi
}

sayHello
