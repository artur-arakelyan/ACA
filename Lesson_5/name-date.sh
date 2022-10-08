#!/bin/bash
echo -n " Hi, what is your name? "
read name
ss | grep ssh  > "$name-`date`.txt" && gzip "$name-`date`.txt"
