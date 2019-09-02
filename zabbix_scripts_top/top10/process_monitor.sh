#!/bin/bash
process=$1
name=$2
case $2 in
  mem_res)
    echo "`tail -n +8 /tmp/top.txt|awk '{a[$NF]+=$6}END{for(k in a)print a[k]/1024,k}'|grep "$process"|cut -d" " -f1`"
  ;;
  cpu_p)
    echo "`tail -n +8 /tmp/top.txt|awk '{a[$NF]+=$9}END{for(k in a)print a[k],k}'|grep "$process"|cut -d" " -f1`"
  ;;
  mem_virt)
    echo "`tail -n +8 /tmp/top.txt|awk '{a[$NF]+=$5}END{for(k in a)print a[k]/1024,k}'|grep "$process"|cut -d" " -f1`"
  ;;
  mem_p)
    echo "`tail -n +8 /tmp/top.txt|awk '{a[$NF]+=$10}END{for(k in a)print a[k],k}'|grep "$process"|cut -d" " -f1`"
   ;;
  pid)
    echo "`tail -n +8 /tmp/top.txt|awk '{a[$NF]+=$1}END{for(k in a)print a[k],k}'|grep "$process"|cut -d" " -f1`"
  ;;
  runtime)
    echo "`tail -n +8 /tmp/top.txt|awk '{a[$NF]+=$11}END{for(k in a)print a[k],k}'|grep "$process"|cut -d" " -f1`"
  ;;
  *)
    echo "Error input:"
  ;;
  esac
exit 0