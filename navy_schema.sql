SELECT 'hello, SQLite';
CREATE TABLE fleet (id INTEGER PRIMARY KEY);

CREATE TABLE ship (
id INTEGER PRIMARY KEY, 
dateBuilt TEXT, 
fleetID INTEGER,
FOREIGN LEY(fleetID) REFERENCES fleet(id)
);

CREATE TABLE sailor (
id INTEGER PRIMARY KEY, 
dateOfBirth TEXT
);

CREATE TABLE duty (
shipID INTEGER,
sailorID INTEGER,
rank INTEGER, 
startDate TEXT, 
endDate TEXT,
FOREIGN KEY(shipID) REFERENCES ship(id), 
FOREIGN KEY(sailorID) REFERENCES sailor(id)
);

