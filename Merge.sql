CREATE DATABASE Flight;

USE Flight;

CREATE TABLE flightPassengers
(
	flightId INT IDENTITY PRIMARY KEY,
	firstName VARCHAR(30) NOT NULL,
	flightCode VARCHAR(20) NOT NULL,
	seat VARCHAR(10) NOT NULL,
	flightDate DATE NOT NULL
);

INSERT INTO flightPassengers(firstName,flightCode,seat,flightDate)
VALUES ('TANMOY','023','5B',GETDATE()),
		('RITAM','023','9H',GETDATE()),
		('JOY','023','56C',GETDATE());

CREATE TABLE checkIn
(
	firstName VARCHAR(30) NOT NULL,
	flightCode VARCHAR(20) NOT NULL,
	seat VARCHAR(10) NOT NULL,
	flightDate DATE NOT NULL
);

INSERT INTO checkIn(firstName,flightCode,seat,flightDate)
VALUES ('TANMOY','023','12M',GETDATE()),
		('RITAM','023','9H',GETDATE()),
		('JOY','023','3C',GETDATE());

SELECT * FROM checkIn;
SELECT * FROM flightPassengers;

MERGE flightPassengers F
USING checkIn C
ON C.firstName=F.firstName
AND C.flightCode=F.flightCode
AND C.flightDate=F.flightDate
WHEN MATCHED
	THEN UPDATE SET F.seat=C.seat
WHEN NOT MATCHED BY TARGET
	THEN INSERT (firstName,flightCode,seat,flightDate)
	VALUES (firstName,flightCode,seat,flightDate)
WHEN NOT MATCHED BY SOURCE
	THEN DELETE;