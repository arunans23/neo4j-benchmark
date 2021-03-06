\copy gene to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/gene.csv' CSV HEADER DELIMITER ',';
\copy goannotation to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/csv/goannotation.csv' CSV HEADER DELIMITER ',';
\copy genegoannotation to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/csv/genegoannotation.csv' CSV HEADER DELIMITER ',';
\copy goterm to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/goterm.csv' CSV HEADER DELIMITER ',';
\copy organism to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/organism.csv' CSV HEADER DELIMITER ',';
\copy datasource to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/datasource.csv' CSV HEADER DELIMITER ',';
\copy dataset to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/dataset.csv' CSV HEADER DELIMITER ',';
\copy chromosome to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/chromosome.csv' CSV HEADER DELIMITER ',';
\copy (select h.type as type, h.bootstrapscore as bootstrapscore, h.geneid as geneid, h.homologueid as homologueid, ds.datasets as dataset from homologue as h, datasetshomologue as ds where ds.homologue=h.id) to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/homologuejoindatasetshomologue.csv' CSV HEADER DELIMITER ',';
\copy mirna to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/mirna.csv' CSV HEADER DELIMITER ',';
\copy (select * from transcript where class='org.intermine.model.bio.Transcript') to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/onlytranscript.csv' CSV HEADER DELIMITER ',';
\copy (select intermine_start, intermine_end, strand, id, featureid, locatedonid from location) to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/location.csv' CSV HEADER DELIMITER ',';
\copy tfbindingsite to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/tfbindingsite.csv' CSV HEADER DELIMITER ',';
\copy crm to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/crm.csv' CSV HEADER DELIMITER ',';
\copy enhancer to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/enhancer.csv' CSV HEADER DELIMITER ',';
\copy (select * from regulatoryregion where class='org.intermine.model.bio.RegulatoryRegion') to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/onlyregulatoryregion.csv' CSV HEADER DELIMITER ','; 
\copy exon to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/exon.csv' CSV HEADER DELIMITER ','; 
\copy cds to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/cds.csv' CSV HEADER DELIMITER ',';
\copy (select * from ncrna where class='org.intermine.model.bio.NcRNA') to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/onlyncrna.csv' CSV HEADER DELIMITER ','; 
\copy mrna to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/mrna.csv' CSV HEADER DELIMITER ',';
\copy snorna to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/snorna.csv' CSV HEADER DELIMITER ',';
\copy snrna to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/snrna.csv' CSV HEADER DELIMITER ',';
\copy trna to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/trna.csv' CSV HEADER DELIMITER ',';
\copy rrna to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/rrna.csv' CSV HEADER DELIMITER ',';
\copy threeprimeutr to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/threeprimeutr.csv' CSV HEADER DELIMITER ',';
\copy fiveprimeutr to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/fiveprimeutr.csv' CSV HEADER DELIMITER ',';
\copy intron to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/intron.csv' CSV HEADER DELIMITER ',';
\copy mirnatarget to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/mirnatarget.csv' CSV HEADER DELIMITER ',';
\copy pointmutation to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/pointmutation.csv' CSV HEADER DELIMITER ',';
\copy transposableelementinsertionsite to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/transposableelementinsertionsite.csv' CSV HEADER DELIMITER ',';
\copy (select * from transposableelement where class='org.intermine.model.bio.TransposableElement') to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/onlytransposableelement.csv' CSV HEADER DELIMITER ',';
\copy intergenicregion to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/intergenicregion.csv' CSV HEADER DELIMITER ',';
\copy chromosomeband to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/chromosomeband.csv' CSV HEADER DELIMITER ',';
\copy (select * from chromosomestructurevariation where class='org.intermine.model.bio.ChromosomeStructureVariation') to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/onlychromosomestructurevariation.csv' CSV HEADER DELIMITER ',';
\copy chromosomaldeletion to '/home/FILESERVER5/micklem/db539/Documents/neo4j/csv/chromosomaldeletion.csv' CSV HEADER DELIMITER ',';
