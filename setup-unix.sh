#!/bin/bash

currdir=$(pwd)

source setup.sh

cd ~ && ln -s ${currdir}/alacritty-unix.toml .alacritty.toml
