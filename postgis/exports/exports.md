# Exports

Find here the exported files from PostGIS.
See https://www.postgresql.org/docs/13/app-pgdump.html form detailed information on the pg_dump command.

- Type the following command to export the whole "public" schema : ```docker exec -it open-gis-bundle_PostGIS pg_dump --schema public -d postgresql://gisadmin:gisadminsecret@localhost:5432/gis -c --if-exists -f /home/exports/public.sql```
- This one to export a single table :
```docker exec -it open-gis-bundle_PostGIS pg_dump -t 'public.\"RuralWaterPoint\"' -d postgresql://gisadmin:gisadminsecret@localhost:5432/gis -c --if-exists -f /home/exports/RuralWaterPoint.sql```

**Note**: The following notation ```'public.\"RuralWaterPoint\"'``` is required to find resources named with capital letters.

