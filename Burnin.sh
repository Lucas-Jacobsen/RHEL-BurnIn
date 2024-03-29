#!/bin/bash
echo "Enter number of CPU cores you want to stress:";
read cores;

echo "Enter Duration in seconds:";
read timeout;

echo "Enter file to write processor info to:";
read processor_file;

echo "Enter file to write temperature info to:";
read temp_file;

stress-ng -cpu $cores -timeout $timeout &

sudo watch -n 60 -d 'dmidecode -t processor | grep Hz | sed "s/^/$(date) /" | tee -a $processor_file' &

sudo watch -n 60 -d 'ipmi-sensors | grep Temp | sed "s/^/$(date) /" | tee -a $temp_file' &

wait
