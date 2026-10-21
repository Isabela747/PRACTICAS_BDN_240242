# Informe técnico: respaldo_1410.sql

- Dialecto: MySQL 8.0.46; InnoDB, utf8mb4.
- Tablas físicas: 8; vistas: 5; columnas: 54; claves foráneas: 8.
- Conteos reconstruidos desde todas las tuplas `INSERT`: 8 tablas; suma de filas reconstruida: 20257. Conteos verificados mediante restauración y `COUNT(*)`: 0; las ocho tablas están pendientes de verificación directa.
- No se detectaron instrucciones SQL `UPDATE`, `DELETE` ni `REPLACE`. Las cinco vistas detectadas aparecen listadas por separado.

## Tablas y registros (reconstrucción, no COUNT verificado)

- `tb_carts`: 0 filas reconstruidas; 5 columnas.
- `tb_logs`: 10135 filas reconstruidas; 8 columnas.
- `tb_products`: 5007 filas reconstruidas; 9 columnas.
- `tb_users`: 8 filas reconstruidas; 8 columnas.
- `tbc_categories`: 100 filas reconstruidas; 7 columnas.
- `tbd_products_categories`: 5007 filas reconstruidas; 5 columnas.
- `tbd_produtcs_users_providers`: 0 filas reconstruidas; 7 columnas.
- `tbd_users_wishlist_products`: 0 filas reconstruidas; 5 columnas.

## Vistas

- `vw_total_products_by_category`: 15 columnas proyectadas.
- `vw_trazabilidad_categories`: 9 columnas proyectadas.
- `vw_trazabilidad_categorizacion_productos`: 9 columnas proyectadas.
- `vw_trazabilidad_products`: 14 columnas proyectadas.
- `vw_trazabilidad_users`: 12 columnas proyectadas.

## Relaciones declaradas

- `tb_carts_ibfk_1`: `tb_carts.user_ID` → `tb_users.ID`.
- `fk_sup_id_category`: `tbc_categories.sup_id_category` → `tbc_categories.ID`.
- `fk_category`: `tbd_products_categories.category_ID` → `tbc_categories.ID`.
- `fk_product`: `tbd_products_categories.product_ID` → `tb_products.ID`.
- `fk_products2`: `tbd_produtcs_users_providers.product_ID` → `tb_products.ID`.
- `fk_user1`: `tbd_produtcs_users_providers.user_ID` → `tb_users.ID`.
- `fk_products1`: `tbd_users_wishlist_products.product_ID` → `tb_products.ID`.
- `fk_user2`: `tbd_users_wishlist_products.user_ID` → `tb_users.ID`.

Las tablas con claves compuestas que actúan como asociación incluyen `tbd_products_categories`, `tbd_produtcs_users_providers` y `tbd_users_wishlist_products`. Esta clasificación refleja solo su estructura de claves.
