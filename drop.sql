# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-27 15:08                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `Purchase_Detail` DROP FOREIGN KEY `Receive_Pascel_Purchase_Detail`;

ALTER TABLE `Receive_Pascel` DROP FOREIGN KEY `Agent_Receive_Pascel`;

ALTER TABLE `Receive_Pascel` DROP FOREIGN KEY `Personnel_Receive_Pascel`;

ALTER TABLE `Receive_Detail` DROP FOREIGN KEY `Receive_Pascel_Receive_Detail`;

# ---------------------------------------------------------------------- #
# Drop table "Purchase_Detail"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Purchase_Detail` DROP PRIMARY KEY;

DROP TABLE `Purchase_Detail`;

# ---------------------------------------------------------------------- #
# Drop table "Receive_Detail"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Receive_Detail` DROP PRIMARY KEY;

DROP TABLE `Receive_Detail`;

# ---------------------------------------------------------------------- #
# Drop table "Receive_Pascel"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Receive_Pascel` DROP PRIMARY KEY;

DROP TABLE `Receive_Pascel`;

# ---------------------------------------------------------------------- #
# Drop table "Personnel"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Personnel` DROP PRIMARY KEY;

DROP TABLE `Personnel`;

# ---------------------------------------------------------------------- #
# Drop table "Agent"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Agent` DROP PRIMARY KEY;

DROP TABLE `Agent`;
