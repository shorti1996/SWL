#!/bin/bash
backup_path=${1:?"Specify where to copy logs"}

for f in */logs/*.log ;
do
  copy_path=$(dirname $backup_path/$f)
  echo "$f";
  echo "mkdir -p $copy_path";
  echo "cp -a $f $copy_path";
  mkdir -p $copy_path;
  cp -a $f $copy_path;
  echo "";
done
