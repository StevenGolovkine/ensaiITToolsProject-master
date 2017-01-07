CREATE TABLE IF NOT EXISTS gas_temp (
  id_pdv STRING,
  cp STRING,
  pop CHAR(1),
  latitude INT,
  longitude INT,
  day STRING,
  id_carburant STRING,
  nom_carburant STRING,
  prix INT)
	ROW FORMAT DELIMITED
		FIELDS TERMINATED BY '59'
		LINES TERMINATED BY '\n';


LOAD DATA INPATH '/user/maria_dev/data/' OVERWRITE INTO TABLE gas_temp;

CREATE TABLE gas
	STORED AS PARQUETFILE
	AS SELECT *, 
		substr(day, 1, 10) AS Jour, 
		substr(day, 6, 5) AS daymonth, 
		substr(day, 1, 4) AS Year,		
		substr(cp, 1, 2) AS dep
			FROM gas_temp;



