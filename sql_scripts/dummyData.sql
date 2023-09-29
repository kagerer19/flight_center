USE FlightCenterDB;

INSERT INTO AircraftType (Manufacturer, `Range`, NumberOfRows, SeatsPerRow) VALUES
('Boeing', 6000, 50, 6),
('Airbus', 5000, 45, 6),
('Lockheed', 4000, 40, 5);

INSERT INTO Aircraft (InternationalRegNum, Name, DateOfEntry, AirlineCode, TypeID) VALUES
('INT001', 'Craft 1', '2023-01-01', 'AAA', 1),
('INT002', 'Craft 2', '2023-02-01', 'BBB', 2),
('INT003', 'Craft 3', '2023-03-01', 'CCC', 3);

INSERT INTO Airports (AirportCode, Name, City, Country, Capacity) VALUES
('VIE', 'Vienna-Schwechat', 'Vienna', 'Austria', 100000),
('JFK', 'New York - John F. Kennedy', 'New York', 'USA', 200000),
('IBZ', 'Ibiza Airport', 'Ibiza', 'Spain', 50000);

INSERT INTO Distances (FromAirport, ToAirport, DistanceBetween) VALUES
('VIE', 'JFK', 6700),
('JFK', 'IBZ', 6000),
('VIE', 'IBZ', 1500);

INSERT INTO Flights (FlightNumber, DepartTime, ArrivalTime, DaysOfOperation, AirlineCode, DepartAirportCode, ArrivalAirportCode) VALUES
('AAA001', '08:00:00', '12:00:00', 'Monday', 'AAA', 'VIE', 'JFK'),
('BBB001', '10:00:00', '14:00:00', 'Tuesday', 'BBB', 'JFK', 'IBZ'),
('BBB001', '10:00:00', '14:00:00', 'Wednesday', 'BBB', 'JFK', 'IBZ'),
('BBB001', '10:00:00', '14:00:00', 'Tuesday', 'BBB', 'JFK', 'IBZ'),
('BBB001', '10:00:00', '14:00:00', 'Monday', 'BBB', 'JFK', 'IBZ'),
('BBB001', '10:00:00', '14:00:00', 'Tuesday', 'BBB', 'JFK', 'IBZ'),
('BBB001', '10:00:00', '14:00:00', 'Thursday', 'BBB', 'JFK', 'IBZ'),
('BBB001', '10:00:00', '14:00:00', 'Tuesday', 'BBB', 'JFK', 'IBZ'),
('BBB001', '10:00:00', '14:00:00', 'Friday', 'BBB', 'JFK', 'IBZ'),
('BBB001', '10:00:00', '14:00:00', 'Tuesday', 'BBB', 'JFK', 'IBZ'),
('CCC001', '14:00:00', '16:00:00', 'Friday', 'CCC', 'VIE', 'IBZ');

INSERT INTO Passengers (Name, Gender, Title) VALUES
('John Doe', 'M', 'Mr.'),
('Jane Smith', 'F', 'Ms.'),
('Sam Brown', 'M', 'Mr.');

INSERT INTO Tickets (DateOfIssue, Price, Currency, SalesOffice, PassengerNumber, FlightNumber) VALUES
('2023-01-01', 500, 'USD', 'Online', 1, 'AAA001'),
('2023-01-02', 600, 'EUR', 'Office A', 2, 'BBB001'),
('2023-01-03', 300, 'EUR', 'Office B', 3, 'CCC001');

INSERT INTO Seats (RowNum, SeatAsLetter, TypeID) VALUES
(1, 'A', 1),
(1, 'B', 2),
(1, 'C', 3),
(1, 'D', 1),
(1, 'E', 3),
(1, 'F', 2);

INSERT INTO Tickets (DateOfIssue, Price, Currency, SalesOffice, PassengerNumber, FlightNumber) VALUES
('2023-01-01', 500, 'USD', 'Online', 1, 'AAA001'),
('2023-01-02', 600, 'EUR', 'Office A', 2, 'BBB001'),
('2023-01-03', 300, 'EUR', 'Office B', 3, 'CCC001');

INSERT INTO BoardingPass (FlightNumber, Date, DepartAirport, DestinationAirport, NameOfPassenger, SeatID) VALUES
('AAA001', '2023-01-01', 'VIE', 'JFK', 'John Doe', 1),
('BBB001', '2023-01-02', 'JFK', 'IBZ', 'Jane Smith', 2),
('CCC001', '2023-01-03', 'VIE', 'IBZ', 'Sam Brown', 3);

