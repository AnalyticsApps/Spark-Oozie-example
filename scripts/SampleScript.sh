#!/bin/sh
#*------------------------------------------------------------
#* Licensed Materials - Property of IBM
#*
#* "Restricted Materials of IBM"
#* (C) Copyright IBM Corp. 2010 All Rights Reserved.
#*
#* US Government Users Restricted Rights - Use, duplication or
#* disclosure restricted by GSA ADP Schedule Contract with
#* IBM Corp.
#*------------------------------------------------------------







##./bin/spark-submit --class org.apache.spark.examples.SparkPi --master yarn-cluster --num-executors 3 
##--driver-memory 4g --executor-memory 2g --executor-cores 1 
##--queue sparkQueue  lib/spark-examples.jar 10 

## ./SampleScript.sh 3 4g sparkQueue 10

echo ""
echo ""
echo "--num-executors $1"
echo "--driver-memory $2"
echo "--queue $3"
echo "Spark PI example - Input Argument : $4 "
echo ""
echo "Calling Spark Submit"
echo ""
/usr/iop/current/spark-client/bin/spark-submit --class org.apache.spark.examples.SparkPi --master yarn-cluster --num-executors $1 --driver-memory $2 --executor-memory 2g --executor-cores 1 --queue $3 spark-examples.jar $4
echo ""
echo "Spark Submit Completed"