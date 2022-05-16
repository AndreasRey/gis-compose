docker exec -it open-gis-bundle_postgis psql postgresql://gisadmin:gisadminsecret@localhost:5432/gis -f /home/sample/simple/sample.sql
docker exec -it open-gis-bundle_postgis psql postgresql://gisadmin:gisadminsecret@localhost:5432/gis -f /home/sample/qwat/qwat_db.sql
docker exec -it open-gis-bundle_postgis psql postgresql://gisadmin:gisadminsecret@localhost:5432/qwat -f /home/sample/qwat/qwat_extensions.sql
docker exec -it open-gis-bundle_postgis psql postgresql://gisadmin:gisadminsecret@localhost:5432/qwat -f /home/sample/qwat/qwat_roles.sql
docker exec -it open-gis-bundle_postgis pg_restore -d "postgresql://gisadmin:gisadminsecret@localhost:5432/qwat" -e --no-owner --verbose --jobs=3 --disable-triggers /home/sample/qwat/qwat_v1.3.6_data_and_structure_sample.backup