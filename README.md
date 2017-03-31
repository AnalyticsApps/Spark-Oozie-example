# Spark_Oozie_example

@Author=Nisanth Simon



Steps to run the project

	# Remove the workflow folders
	hadoop fs -rmr /tmp/Spark_Oozie_example

	# Move the workflow to hdfs
	hadoop fs -put /opt/Spark_Oozie_example /tmp

	# Invoke your Oozie workflow from command line.
	cd /usr/iop/current/oozie-client/bin/

	# Change the hostname & port based on your cluster 
	export OOZIE_URL=http://<AddHostName>:11000/oozie

	# Run the Oozie Job
	./oozie job -run -config /opt/Spark_Oozie_example/job.properties 
