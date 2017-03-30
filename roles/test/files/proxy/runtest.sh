#!/bin/bash

java -jar "minitaf.jar" -log_file "logfile.txt" -result_file "resultFile.txt" -tsf test_suite.xml -cf cf/params -inf cf/userlist.csv 
