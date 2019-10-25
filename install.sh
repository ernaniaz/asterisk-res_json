#!/bin/bash
if [ ! -s include/asterisk.h ]; then
  echo "Please cd into the directory where the asterisk source has been untarred."
  exit
fi
cp asterisk-res_json/res_json.c asterisk-res_json/cJSON.c addons
cp asterisk-res_json/cJSON.h include/asterisk
echo "Edit addons/Makefile: add res_json to the list of modules built, and"
echo "                      res_json.so: cJSON.o res_json.o"
