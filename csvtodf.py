import pyspark
from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import StringType
from pyspark.sql.functions import split,explode
from pyspark.sql.functions import udf, regexp_replace,upper
import re
import requests

spark=SparkSession.builder.getOrCreate()

df=spark.read.format("csv").option("header","true").option("quote", "\"").option("escape", "\"").option("multiLine","true").load("/content/sample_data/RRK").withColumn("Comments", regexp_replace("Comments", "\n", "")).withColumn("Comments", regexp_replace("Comments", '^"(.*)"$', '$1'))
df.show(truncate=False)

df1= udf(lambda comments: re.sub('("(.*?)")', lambda match: match.group(0).upper(), comments))
result = df.withColumn("comments", df1("comments"))
result.show(truncate=False)

