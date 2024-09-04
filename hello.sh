#!/bin/bash

sayHello(){
  echo "Who are you?"
  read user
  welcome="Hallo du, wie gehts dir ${user} ?"
  espeak "$welcome"
  if [[ "$user" == "Fritz" ]]; then
    echo "Glad you came over!"
  fi
}

sayHello
