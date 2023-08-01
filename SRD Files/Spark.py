from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("SHANTHAN").enableHiveSupport().getOrCreate()
spark.sql("USE srd_05212023_uk_accidents_hive_db")
spark.sql("show tables").show()
hive_df = spark.sql("select * from uk_accidents")
hive_df = spark.sql("SELECT * FROM uk_accidents WHERE Accident_Index != 'Accident_Index'")
hive_df.show()
replaced_df = hive_df.na.replace('', 'N/A')
replaced_df.write.mode("overwrite").parquet("/user/bigdatacloudxlab27228/SRD_05312023_UK_Accidents_Curated")

# Convert Parquet to CSV
csv_df = spark.read.parquet("/user/bigdatacloudxlab27228/SRD_05312023_UK_Accidents_Curated")
csv_df.write.mode("overwrite").csv("/user/bigdatacloudxlab27228/SRD_05312023_UK_Accidents_Curated_CSV")
END_PYSPARK_COMMANDS
)
