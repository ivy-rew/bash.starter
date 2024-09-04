#!/bin/bash

sayHello(){
  echo "Who are you?"
  read user
  echo "hello ${user}"
}

sayHello
