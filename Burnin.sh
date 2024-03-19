
#  Stress-ng -cpu (number of cores) -timeout (seconds)
#  Sudo watch -n (interval in s ) -d 'dmidecode -t processor | grep Hz | sed "s/^/$(date) /" | tee -a (file to be written to)'
#  Sudo watch -n 60 -d 'ipmi-sensors | grep Temp | sed "s/^/$(date) /" | tee -a (file to be written to)'

#!/bin/bash

echo "Enter number of CPU cores you want to stress:" 
read cores

echo "Enter timeout in seconds:" 
read timeout

echo "Enter interval in seconds for processor info:" 
read interval

echo "Enter file to write processor info to:" 
read processor_file

echo "Enter file to write temperature info to:" 
read temp_file

stress-ng -cpu $cores -timeout $timeout &

sudo watch -n $interval -d 'dmidecode -t processor | grep Hz | sed "s/^/$(date) /" | tee -a $processor_file' &

sudo watch -n 60 -d 'ipmi-sensors | grep Temp | sed "s/^/$(date) /" | tee -a $temp_file' &

wait
