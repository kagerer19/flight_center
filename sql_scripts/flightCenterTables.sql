CREATE TABLE Aircraft (
    AircraftNum INT PRIMARY KEY AUTO_INCREMENT,
    InternationalRegNum VARCHAR(255) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    DateOfEntry DATE NOT NULL,
    AirlineCode VARCHAR(3),
    TypeID INT,
    FOREIGN KEY (AirlineCode) REFERENCES Airlines(AirlineCode),
    FOREIGN KEY (TypeID) REFERENCES AircraftType(TypeID)
);

CREATE TABLE Distances (
    DistanceID INT PRIMARY KEY AUTO_INCREMENT,
    FromAirport VARCHAR(3),
    ToAirport VARCHAR(3),
    DistanceBetween INT NOT NULL,
    FOREIGN KEY (FromAirport) REFERENCES Airports(AirportCode),
    FOREIGN KEY (ToAirport) REFERENCES Airports(AirportCode)
);

CREATE TABLE Passengers (
    PassengerNumber INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Gender ENUM('M', 'F') NOT NULL,
    Title VARCHAR(10)
);

CREATE TABLE Flights (
    FlightNumber VARCHAR(6) PRIMARY KEY,
    DepartTime TIME NOT NULL,
    ArrivalTime TIME NOT NULL,
    ActualTakeOffTime TIME,
    ActualLandingTime TIME,
    DaysOfOperation VARCHAR(255) NOT NULL,
    AirlineCode VARCHAR(3),
    DepartAirportCode VARCHAR(3),
    ArrivalAirportCode VARCHAR(3),
    FOREIGN KEY (AirlineCode) REFERENCES Airlines(AirlineCode),
    FOREIGN KEY (DepartAirportCode) REFERENCES Airports(AirportCode),
    FOREIGN KEY (ArrivalAirportCode) REFERENCES Airports(AirportCode)
);

CREATE TABLE Tickets (
    TicketNumber INT PRIMARY KEY AUTO_INCREMENT,
    DateOfIssue DATE NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Currency VARCHAR(3) NOT NULL,
    SalesOffice VARCHAR(255) NOT NULL,
    PassengerNumber INT,
    FlightNumber VARCHAR(6),
    FOREIGN KEY (PassengerNumber) REFERENCES Passengers(PassengerNumber),
    FOREIGN KEY (FlightNumber) REFERENCES Flights(FlightNumber)
);

CREATE TABLE Seats (
    SeatID INT PRIMARY KEY AUTO_INCREMENT,
    RowNum INT NOT NULL,
    SeatAsLetter CHAR(1) NOT NULL,
    TypeID INT,
    FOREIGN KEY (TypeID) REFERENCES AircraftType(TypeID)
);

CREATE TABLE BoardingPass (
    BoardingPassID INT PRIMARY KEY AUTO_INCREMENT,
    FlightNumber VARCHAR(6),
    SeatID INT,
    Date DATE NOT NULL,
    DepartAirport VARCHAR(3),
    DestinationAirport VARCHAR(3),
    NameOfPassenger VARCHAR(255),
    FOREIGN KEY (DestinationAirport) REFERENCES Airports(AirportCode),
    FOREIGN KEY (DepartAirport) REFERENCES Airports(AirportCode),
    FOREIGN KEY (FlightNumber) REFERENCES Flights(FlightNumber),
    FOREIGN KEY (SeatID) REFERENCES Seats(SeatID)
);
