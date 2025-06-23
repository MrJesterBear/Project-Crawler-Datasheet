-- Saul Maylin
-- Project Crawler
-- SQL Statements.
-- V1
-- 23/06/2025
     
USE saul_webhost;

CREATE TABLE crawlerAccounts (
		UID INT (6) AUTO_INCREMENT NOT NULL,
        username VARCHAR (35) NOT NULL,
        email VARCHAR (90) NOT NULL,
        password VARCHAR (255) NOT NULL,
        status CHAR (1) NOT NULL DEFAULT 'F', -- F(ree) & D(onator)
        PRIMARY KEY (UID)
);

CREATE TABLE crawlerStats (
		UID INT (6) NOT NULL,
        charaNum INT (3) NOT NULL DEFAULT 0,
        campNum INT (3) NOT NULL DEFAULT 0,
        PRIMARY KEY (UID),
        FOREIGN KEY (UID) REFERENCES crawlerAccounts(UID) ON DELETE CASCADE
);

-- CREATE TABLE crawlerCharacters (
-- 		charaID INT (7) AUTO_INCREMENT NOT NULL,
--         charaName VARCHAR (70),
--         charaRace VARCHAR (20),
--         charaClass VARCHAR (30)
--         
-- );