USE db_test_7b;

LOAD DATA LOCAL INFILE
'C:/Users/Mago/OneDrive/Desktop/Documentos/PRACTICAS_BDN_240242/Practica_03/seeds/tbd_products_categories_importar_revision.csv'
INTO TABLE tbd_products_categories
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
    category_ID,
    product_ID,
    @v_status,  
    @v_creation_date,
    @v_last_update
)
SET
    status = IF(TRIM(@v_status) = '1', b'1', b'0'),
    creation_date = NULLIF(TRIM(@v_creation_date), ''),
    last_update = NULLIF(TRIM(@v_last_update), '');