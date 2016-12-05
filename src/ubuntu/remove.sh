#!/bin/bash
function remove {
  sudo apt-get purge $package
  sudo apt-get autoremove -y
}
