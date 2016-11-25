# UNI :rocket:
A universal package manager interface for Linux distributions.

[![version](https://img.shields.io/badge/uni-v.0.0.1-blue.svg)](#)
[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/daltonmenezes/uni/blob/master/LICENSE)

# Why

Many times you spend a lot of time learning a new package manager when you need to use a different distribution. And regardless of this problem, many commands require the execution of another, such as when you add a new repository in Ubuntu and then need to use apt-get update. If we need to do this, why when we add a repository this is no automatically done? Thinking about all these things I've decided to create UNI and automate these tasks and help people who need to migrate from one distribution to another but feel they could spend their time on other things instead of learning a new package manager whenever that happens.

# Goal

the goal is make an easy interface that abstracts repetitive commands related to package management. Join tasks that require the execution of others without spending time typing one by one. Make it easy to work between different distributions by always using the same UNI commands regardless of the distribution you are using.

## Installation

**Ubuntu** and based distributions:
```shell
wget -O upm https://git.io/v1UKq && chmod +x upm && ./upm && rm upm
```
**Fedora** ( supports only dnf for now ):
```shell
wget -O upm https://git.io/v1UKO && chmod +x upm && ./upm && rm upm
```
# Example

| Command | Alias | Description |
| --- | --- | --- |
| `uni upgrade` | `uni up`  | Upgrades deeply the system and remove useless dependencies. |

This abstracts the following commands on **Ubuntu**:
```shell
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y
```
This abstracts the following commands on **Fedora**:
```shell
sudo dnf upgrade -y
sudo dnf autoremove -y
```

# Documentation

- [English](https://github.com/daltonmenezes/uni/blob/master/docs/en/API.md)
- Português (Em breve)
