sqoop export --connect jdbc:mysql://cxln2:3306/sqoopex --username sqoopuser --password NHkkP876rp --table SRD_06022023_UK_Accidents_SQOOP --export-dir hdfs://cxln1.c.thelab-240901.internal:8020/user/bigdatacloudxlab27228/SRD_05312023_UK_Accidents_Curated_CSV --input-fields-terminated-by ',' --input-lines-terminated-by '\n'