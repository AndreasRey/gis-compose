docker exec -it open-gis-bundle_postgis psql postgresql://gisadmin:gisadminsecret@localhost:5432/gis -f /home/imports/WeC/db.sql
docker exec -it open-gis-bundle_postgis psql postgresql://gisadmin:gisadminsecret@localhost:5432/wec -f /home/imports/WeC/extensions.sql
docker exec -it open-gis-bundle_postgis psql postgresql://gisadmin:gisadminsecret@localhost:5432/wec -f /home/imports/WeC/data.sql