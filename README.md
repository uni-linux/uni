# UNI :rocket:
[![version](https://img.shields.io/badge/uni-v.0.0.1-blue.svg)](#)
[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/daltonmenezes/uni/blob/master/LICENSE)

A universal and optimized interface for handle package managers on Linux distributions.
 
UNI is an abstraction layer that allows you to manage different package managers using the same UNI commands regardless of the distribution you are using and automates repetitive tasks on them.

# Why

Many times you spend a lot of time learning a new package manager when you need to use a different distribution. And regardless of this problem, many commands require the execution of another, such as when you add a new repository in Ubuntu and then need to use apt-get update. If we need to do this, why when we add a repository this is no automatically done? Thinking about all these things I've decided to create UNI and automate these tasks and help people who need to migrate from one distribution to another but feel they could spend their time on other things instead of learning a new package manager whenever that happens.

# Goal

the goal is make an easy interface that abstracts repetitive commands related to package management. Join tasks that require the execution of others without spending time typing one by one. Make it easy to work between different distributions by always using the same UNI commands regardless of the distribution you are using.

# Installation

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
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
```
This abstracts the following commands on **Fedora**:
```shell
sudo dnf upgrade -y
sudo dnf autoremove -y
```

# Documentation

- [English](https://github.com/daltonmenezes/uni/blob/master/docs/en/API.md)
- Português (Em breve)

# Contributing

I've created a 'recompiler' tool to help us to test locally using uni command on terminal normally during the development.

[So, let's check the contributing guide here](https://github.com/daltonmenezes/uni/blob/master/docs/en/CONTRIBUTING.md).
