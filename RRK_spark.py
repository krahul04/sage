import pyspark
import pyspark.sql.functions
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName('sparkdf').enableHiveSupport().getOrCreate()
from pyspark.sql.functions import*
df=spark.sql("select * from rrk.list2")
df.show(10)
df1=df.select([when(col(c)=="",None).otherwise(col(c)).alias(c) for c in df.columns])
df1.show(10)
df2=df1.select([when(col(c).isNull(),'N/A').otherwise(col(c)).alias(c) for c in df1.columns])
df2.show(10)
df2.select([count(when(col(c)=="N/A", c)).alias(c) for c in df2.columns]).show()
df2.write.mode('overwrite').parquet('/user/bigdatacloudxlab27228/hdfs_parq3')
