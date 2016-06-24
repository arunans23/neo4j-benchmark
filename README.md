# neo4j-benchmark
This repository contains:

Shell scripts to export data from postgres and import in neo4j:
* script/sql/createTablesFile.sh generates tables.txt file containing the table names 
* script/sql/scripts/sql/generateScripts.sh reads from table.txt file and
  * generate the export.sql script (to export data from postgres)
  * generate the import.cypher script to import data into ne04j
* to run the sql script use psql option \i export.sql 
* to run the cypher script use the neo4j shell {ne04j dir}/bin/neo4j-shell -file import.cypher

Some scripts used to benchmark with a subset of flymine data:
* script/sql/partial-flymine-export.sql: script to export part of flymine data into csv format files
* some cypher scripts to import csv files into neo4j
  * Before running the cypher scripts, copy *.csv under neo4j/import directory (or in neo4j.conf uncomment dbms.directories.import=import to load files from anywhere in filesystem)
  * run the cypher scripts in the following order: import_flymine.cypher, import_flymine_homologue.cypher, import_flymine_location.cypher, import_flymine_located_on_relationship.cypher, import_flymine_overlaps_relationship.cypher
  * to run the script: {neo4j home directory}/bin/neo4j-shell -file {path}/import_flymine.cypher
* a curl-format text file to use some nice curl options in order to calculate the execution time:
    * curl -w "@curl-format.txt" -s -i -X POST http://localhost:7474/db/data/transaction/commit -d '{"statements" : [ {"statement" : "MATCH(g:Gene) RETURN g"} ]}' -H "Accept:application/json; charset=UTF-8" -H "Content-Type:application/json" -o /dev/null
* some neo4j server extensions implementing orthologue and overlapping queries using neo4j Java API
  * after deploying on the server (read neo4j documentation)
    * curl -w "@curl-format.txt" -s -i http://localhost:7474/examples/orthologue/api/tws
    * curl -w "@curl-format.txt" -s -i http://localhost:7474/examples/overlapping/api/CG11566
