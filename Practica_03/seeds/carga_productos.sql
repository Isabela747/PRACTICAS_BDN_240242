LOAD DATA LOCAL INFILE 'C:/Users/Mago/OneDrive/Documentos/PRACTICAS_BDN_240242/Practica_03/seeds/categorias_ecommerce_100.csv'
INTO TABLE tbc_categories
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
    ID,
    name,
    description,
    @v_sup_id_category,
    @v_status
)
SET 
    sup_id_category = NULLIF(TRIM(@v_sup_id_category), ''),
    status = IF(@v_status = '1', b'1', b'0');