# RHEL-BurnIn
This script is used to perform a burnin test on a Linux-based system. It uses **Stress-ng** to stress the CPU cores and monitoring commands for the clock speed and motherboard + CPU temps in 1 minute intervals.  <hr>

## Execution

* Clone [this](https://github.com/Lucas-Jacobsen/RHEL-BurnIn) repository using <br> ```git clone https://github.com/Lucas-Jacobsen/RHEL-BurnIn```

* Navigate to the directory where the script was downloaded using 
<br> ```cd /Path_to_download```


* Make the script executable using:
<br> ```chmod +x script.sh```

* Run the script using: 
<br> ```./Burnin.sh```
 <hr>

## Burnintest for aarch64
* Download software [Here](https://www.passmark.com/products/burnintest/bitlinux_arm_download.php)
* Extract files 
* Navigate to directory and change the permission to allow read/write 
<br> ```chmod /Path_to_directory```
* Run the following commands:
<br> ```ln -s "/usr/lib64/libncurses.so.6.2" "/usr/lib64/libncurses.so.5" ```
<br> ```ln -s "/usr/lib64/libtinfo.so.6.2" "/usr/lib64/libtinfo.so.5"```
* Run the script: 
<br> ```sudo ./bit_cmd_line_aarch64 ```
 <hr>

## Performance Test
* Download software [Here](https://www.passmark.com/products/burnintest/bitlinux_arm_download.php)
* Extract files
* Navigate to directory and change the permission to allow read/write 
<br> ```chmod /Path_to_directory```
* Run the script:
<br> ```./pt_linux_arm64```
<br> Select **A** for all tests
<br> Select **U** to upload results







