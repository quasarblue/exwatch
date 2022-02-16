#!/bin/awk -f
BEGIN {
 FS=";"
}
{
  row=toupper($1);
  for(i=2;i<=NF;i++) {row=row  ";"  $i};
  print row;
}
