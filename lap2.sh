#!/bin/sh



file=$1
filelog="pass.log"



ages (){

grep -E ,"[5-6]+([0-9]+)", $file > $filelog

}

ages

echo finish

