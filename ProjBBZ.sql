-- Start des Projekts Umweltmonitoring des Buchsbaumzünslers in städtischen und ländlichen Gebieten Deutschlands unter Verwendung der freien Software Postgresql mit der PostGIS-Erweiterung.
-- Erstellung der PostGIS-Erweiterung für die deutschland-Datenbank:

CREATE EXTENSION postgis;

-- Erstellen Sie Spalten für Bundesländer und Bezirke für die PostGIS-Ebenen GBIF-Einträge für Buchsbaum und Buchsbaumzünsler, die Sie zuvor hinzugefügt haben.

ALTER TABLE buchsbaumzunsler ADD COLUMN bundesland varchar(30);
ALTER TABLE buchsbaum ADD COLUMN bundesland varchar(30);

ALTER TABLE buchsbaumzunsler ADD COLUMN landkreis varchar(40);
ALTER TABLE buchsbaum ADD COLUMN landkreis varchar(40);
