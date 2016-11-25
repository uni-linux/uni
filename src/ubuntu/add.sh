#!/bin/bash
function add {
  sudo add-apt-repository $repo -y
  sudo apt-get update
}
