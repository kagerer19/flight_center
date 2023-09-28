# Flight Center Database

A comprehensive database system designed for the All Airways Association (AAA) to streamline flight operations.

## Description

The Flight Center Database is designed to manage information about passengers, flights, airlines, airports, and various other related entities. With a focus on usability and efficiency, the database aims to simplify flight bookings, manage airline and aircraft details, and evaluate flight punctuality, among other functions.

## Database Structure

The database comprises several tables, each serving a unique purpose:

1. **Passenger**: Captures passenger details such as name, gender, and title.
   
2. **Airlines**: Contains information on various airlines, with attributes like name and headquarters.
   
3. **AircraftType**: Catalogs different aircraft types, noting details like manufacturer and range.
   
4. **Airport**: A comprehensive table detailing airports globally, storing data such as city, country, and capacity.
   
5. **Aircraft**: Stores specific details about each aircraft, linking to both the AircraftType and Airlines tables for comprehensive data on type and ownership.
   
6. **Distances**: Maintains records of distances between various airports, facilitating efficient flight planning.

7. **Flight**: Holds information about individual flights, including departure and arrival times, airlines, and related airports.

8. **Ticket**: Manages booking details, correlating passengers to their flights and detailing price and purchase information.

9. **BoardingPass**: Essential for the day-of-flight experience, this table connects passengers to flights and provides seating details.

10. **Seat**: Details about aircraft seating, linking back to the AircraftType for layout information.

## Tools Used

- **Database System**: MariaDB
- **Database IDE**: DataGrip by JetBrains

## Setup & Configuration

1. Install and initiate MariaDB.
2. Launch DataGrip and establish a connection to your MariaDB instance.
3. Run the provided SQL scripts located in the `sql/` directory to set up the database tables and establish relationships.

## Usage Examples

- Retrieve a list of all flights associated with a specific airline:
  ```sql
  SELECT * FROM Flight WHERE AirlineCode = 'AAA';
  ```