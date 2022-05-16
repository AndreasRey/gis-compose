# Migration

## Quick integration of Rural Water Points and WeC projects
To integrate the projects, run the following commands successively :
```
./scripts/load_RuralWaterPoints.bat
```

```
./scripts/load_WeC.bat
```

If you want an in-depth understanding of the process, please read the next section "Integrate projects from other instances".

## Integrate projects from other instances
Assuming you've been given an exported schema as a .sql file, and the QGIS files (*.qgs and *.qgs.cfg - for lizmap), you want to integrate the data in your PostGIS DB and to display the Lizmap project. We will create separate databases for each projects as we want to keep a simple workflow.

### Files for migration
- You have the .sql file of the schema to integrate. It was generated using this command :
```
docker exec -it open-gis-bundle_PostGIS pg_dump --schema public -d postgresql://gisadmin:gisadminsecret@localhost:5432/gis -c --if-exists -f /home/exports/public.sql
```
- The QGIS .qgs and .qgs.cfg files were simply copied.

### 1. Changes in the .sql file
We want first to change the syntax of null values. As our .sql files contains records inserted through the "COPY" statement, we might get errors : indeed, we load the file using the ```psql``` command which can't interpret correctly the default notation for null values, which is ```\N```.

To proceed, we open the file with a text editor such as Notepad++ (as the .sql file might be quite big - you should definitely open it with Notepad++ instead of VsCode to avoing lags and/or memory issues), then do the following search and replace operations (the order is important) :
- 1. Change ```\N``` by ```<Null>```
- 2. Change ```FROM stdin;``` by ```FROM stdin (NULL '<Null>');```

### 2. Changes in the .qgs file
As we are going to create a specific DB for the imported project, we will replace all mentions to the previous one in QGIS. Find a name for the new database (we will use "newdbname" for the example), then open the .qgs file with a text editor and replace the following :
- Change ```dbname='gis'``` by ```dbname='newdbname'```

Then place the .qgs file along with the .qgs.cfg (this last one shouldn't change) into the desired location under the lizmap/instances folder

### 3. Create extra .sql files
We need to tell PostgreSQL that we want to create e new database. Create the "db.sql" file with the following code :
```
CREATE DATABASE newdbname;
GRANT ALL PRIVILEGES ON DATABASE newdbname TO gisadmin;
```

Then we need to enable several extension (such as "postgis") in this new database. Create the "extensions.sql" file with the following code :
```
CREATE EXTENSION postgis;
CREATE EXTENSION hstore;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION postgis_raster;
CREATE EXTENSION pgrouting;
CREATE EXTENSION "uuid-ossp";
```

Finally, renamed the imported .sql file into "data.sql", then place these 3 files under the postgis/imports folder (which is accessible to the postgis Docker container)

### 4. Write and run the .bat file
You'll run a .bat file that is going to integrate the three .sql in the right order. Write the following code iniside : 
```
docker exec -it open-gis-bundle_PostGIS psql postgresql://gisadmin:gisadminsecret@localhost:5432/gis -f /home/imports/db.sql
docker exec -it open-gis-bundle_PostGIS psql postgresql://gisadmin:gisadminsecret@localhost:5432/newdbname -f /home/imports/extensions.sql
docker exec -it open-gis-bundle_PostGIS psql postgresql://gisadmin:gisadminsecret@localhost:5432/newdbname -f /home/imports/data.sql
```
This part ```postgresql://gisadmin:gisadminsecret@localhost:5432/gis``` is a PG Connection string. Note that we connect to the pre-existing "gis" database before running the db.sql which is going to create our new DB. Then the connection strings changes to connect to this newly created database and so perform the following operations.

Run you .bat file.



