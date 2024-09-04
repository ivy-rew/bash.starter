#!/bin/bash

sayHello(){
  echo "Wie heisst du?"
  read user
  welcome="Hallo du, wie gehts dir ${user} ?"
  espeak -v german "$welcome"
  if [[ "$user" == "Fritz" ]]; then
    echo "Schön, dass du da bist!"
  fi
}

sayHello
