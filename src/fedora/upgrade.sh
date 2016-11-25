#!/bin/bash
function upgrade {
  sudo dnf upgrade -y
  sudo dnf autoremove -y
}
