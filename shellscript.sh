mkdir /home/bigdatacloudxlab27228/RRK
hdfs dfs -mkdir RRK
hdfs dfs -copyFromLocal /home/bigdatacloudxlab27228/RRK/Listings.csv /user/bigdatacloudxlab27228/RRK/
hive -f /home/bigdatacloudxlab27228/RRK/RRK_hive.hql
spark-submit /home/bigdatacloudxlab27228/RRK/RRK_spark.py
sh /home/bigdatacloudxlab27228/RRK/RRK_sqoop.sh
