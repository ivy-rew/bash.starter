#!/bin/bash

sayHello(){
  echo "Who are you?"
  read user
  echo "hello ${user}"
  if [[ "$user" == "Fritz" ]]; then
    echo "Glad you came over!"
  fi
}

sayHello
