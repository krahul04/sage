create external table if not exists list2(
    LISTING_ID STRING,
    NAME STRING,
    HOST_ID STRING,
    HOST_SINCE STRING,
    HOST_LOCATION STRING,
    HOST_RESPONSE_TIME STRING,
    CITY STRING,
    LATITUDE STRING,
    LONGITUDE STRING,
    REVIEW_SCORES_RATING STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"")
LOCATION '/user/bigdatacloudxlab27228/RRK'
TBLPROPERTIES ("skip.header.line.count"="1");
