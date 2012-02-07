Documentation: http://www.postgresql.org/docs/8.0/interactive/tutorial-start.html


--List Tables
SELECT table_name FROM information_schema.tables WHERE table_type = 'BASE TABLE' AND table_schema NOT IN ('pg_catalog', 'information_schema')

--List Table Columns
SELECT column_name FROM information_schema.columns WHERE table_name = 'table_name'

--List Foreign Key Tables (for "people" table in this example)
SELECT table_name FROM information_schema.columns WHERE upper(column_name) = 'PERSON_ID'

--Access a database
$> psql database_name

--List databases
\l

--Describe a table
\d+ table_name

--exit psql
\q

--show help
\h
\?

--show psql version
SELECT version();

--show date
SELECT current_date;


