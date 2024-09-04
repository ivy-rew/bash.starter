#!/bin/bash

sayHello(){
  echo "Wie heisst du?"
  read user
  
  talk "Hallo du, wie gehts dir ${user} ?"
  if [[ "$user" == "Fritz" ]]; then
    talk "Schön, dass du da bist!"
  fi
}

talk(){
  text=$1
  echo $text
  espeak -v german "$text"
}

sayHello
