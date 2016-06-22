#! /usr/bin/env bash

config_dir=$HOME/.config/terminator
config_file=$config_dir/config


if [ -d $config_dir ]; then
    echo "The config directory already exists."
elif [ -f $config_dir ]; then
    echo "A file by the name $config_dir already exists. Expected a directory."
    exit
else
    echo "The config directory does not exist. Creating one."
    mkdir -p $config_dir 
fi

if [ -f $config_file ]; then
    echo "A config file already exists!"
else
    echo "Creating the config file at $config_file."
    cp config $config_file
    exit
fi

