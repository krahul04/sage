CREATE EXTERNAL TABLE IF NOT EXISTS uk_accidents (
  Accident_Index STRING,
  Vehicle_Reference INT,
  Casualty_Reference INT,
  Casualty_Class INT,
  Sex_of_Casualty INT,
  Age_of_Casualty INT,
  Age_Band_of_Casualty INT,
  Casualty_Severity INT,
  Pedestrian_Location INT,
  Pedestrian_Movement INT,
  Car_Passenger INT,
  Bus_or_Coach_Passenger INT,
  Pedestrian_Road_Maintenance_Worker INT,
  Casualty_Type INT,
  Casualty_Home_Area_Type INT
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"", "escapeChar" = "\\")
STORED AS TEXTFILE
LOCATION '/user/bigdatacloudxlab27228/SRD_05312023_UK_Accidents_Landing';
END_HIVE_COMMANDS
)
