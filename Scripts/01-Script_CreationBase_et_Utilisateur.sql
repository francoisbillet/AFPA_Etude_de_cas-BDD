CREATE USER infoplus WITH CREATEDB;
ALTER USER infoplus WITH PASSWORD 'infoplus';

CREATE DATABASE db_infoplus OWNER infoplus;

-- \c db_infoplus infoplus;

-- psql -U infoplus -h localhost -d db_infoplus -f "02-Script_CreationTables.sql";