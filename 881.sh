#!/bin/bash

date=`date +"%Y%m%d"`
hour_tmp=`date +"%k"`
url=http://ice22.securenetsystems.net/UNIVM
duration=4200

if [ $hour_tmp -lt 12 ]; then
	hour=Am
else
	hour=Pm
fi

output_file=Podcast_${date}_Beatles_$hour
output_dir=/home/Downloads
cd $output_dir

#touch $output_file

streamripper $url -d $output_dir -l $duration -a $output_file -o always
