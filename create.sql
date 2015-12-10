# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-27 15:08                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Agent"                                                      #
# ---------------------------------------------------------------------- #
create schema 5605104040db;
use 5605104040db;
CREATE TABLE `Agent` (
    `Agent_ID` CHAR(20) NOT NULL,
    `Agent_Name` VARCHAR(40),
    `Agent_Address` VARCHAR(40),
    `Agebt_Tel` CHAR(20),
    CONSTRAINT `PK_Agent` PRIMARY KEY (`Agent_ID`)
);

# ---------------------------------------------------------------------- #
# Add table "Personnel"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `Personnel` (
    `Pers_ID` CHAR(20) NOT NULL,
    `PersName` VARCHAR(40),
    `PersAddress` VARCHAR(40),
    `PersTel` VARCHAR(40),
    `PersPosition` VARCHAR(40),
    CONSTRAINT `PK_Personnel` PRIMARY KEY (`Pers_ID`)
);

# ---------------------------------------------------------------------- #
# Add table "Receive_Pascel"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `Receive_Pascel` (
    `Receive_ID` CHAR(20) NOT NULL,
    `Receive_Date` DATE,
    `Pers_ID` CHAR(20),
    `Agent_ID` CHAR(20),
    CONSTRAINT `PK_Receive_Pascel` PRIMARY KEY (`Receive_ID`)
);

# ---------------------------------------------------------------------- #
# Add table "Receive_Detail"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `Receive_Detail` (
    `Receive_ID` CHAR(20) NOT NULL,
    `ReceiveQty` INTEGER,
    CONSTRAINT `PK_Receive_Detail` PRIMARY KEY (`Receive_ID`)
);

# ---------------------------------------------------------------------- #
# Add table "Purchase_Detail"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `Purchase_Detail` (
    `PurchNo` CHAR(20) NOT NULL,
    `PurchQty` INTEGER,
    `Cost` VARCHAR(40),
    `NetTotal` VARCHAR(40),
    `Receive_ID` CHAR(20),
    CONSTRAINT `PK_Purchase_Detail` PRIMARY KEY (`PurchNo`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Purchase_Detail` ADD CONSTRAINT `Receive_Pascel_Purchase_Detail` 
    FOREIGN KEY (`Receive_ID`) REFERENCES `Receive_Pascel` (`Receive_ID`);

ALTER TABLE `Receive_Pascel` ADD CONSTRAINT `Agent_Receive_Pascel` 
    FOREIGN KEY (`Agent_ID`) REFERENCES `Agent` (`Agent_ID`);

ALTER TABLE `Receive_Pascel` ADD CONSTRAINT `Personnel_Receive_Pascel` 
    FOREIGN KEY (`Pers_ID`) REFERENCES `Personnel` (`Pers_ID`);

ALTER TABLE `Receive_Detail` ADD CONSTRAINT `Receive_Pascel_Receive_Detail` 
    FOREIGN KEY (`Receive_ID`) REFERENCES `Receive_Pascel` (`Receive_ID`);
