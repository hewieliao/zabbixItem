#!/bin/bash
top -n 1 -b > /tmp/test.txt
process=$1
name=$2
case $2 in
  pid)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$1}; END{print sum}'`
  ;;
  user)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$2}; END{print sum}'`
  ;;
  pr)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$3}; END{print sum}'`
  ;;
  ni)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$4}; END{print sum}'`
  ;;
  virt)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$5}; END{print sum}'`
  ;;
  res)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$6}; END{print sum}'`
  ;;
  shr)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$7}; END{print sum}'`
  ;;
  s)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$8}; END{print sum}'`
  ;;
  cpu)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$9}; END{print sum}'`
  ;;
  mem)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$10}; END{print sum}'`
  ;;
  time)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$11}; END{print sum}'`
  ;;
  command)
    echo `cat /tmp/test.txt |grep $process |awk '{sum+=$12}; END{print sum}'`
  ;;
esac