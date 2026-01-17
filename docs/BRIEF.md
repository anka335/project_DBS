## Domain overview - variant 5 (Airline Reservation)

The system is an Airline Reservation System designed to manage flights, passengers, and reservations. It supports booking management, flight information tracking, and basic operational queries for an airline. The main goal is to allow airline staff to manage flights and passengers, and to allow passengers to be booked on flights through reservations.


## Types of people associated with Airline Reservation System

* Passenger: A customer who can be booked on flights
* Airline Staff (Admin/User): Manages flights, airports, and reservations


## User stories from the view of airline staff member

1. Creating a passenger record so that customers can be booked on flights
2. Viewing a list of passengers so that airline staff member can search and manage customer information
3. Updating passenger details
4. Deleting a passenger record

5. Creating a flight so that it can be scheduled and offered for booking
6. Viewing all flights so that airline staff member can monitor schedules and availability
7. Updating flight details
8. Canceling or deleting a flight

9. Creating a reservation linking a passenger to a flight
10. Viewing all reservations for a given flight
11. Viewing all reservations for a given passenger
12. Updating a reservation (seat number or status)
13. Cancelling a reservation so that a seat becomes available again

14. Getting a summarized view of flights with the number of booked passengers
15. Searching reservations by passenger name or flight number



## Business rules

### Entities and cardinalities

1. Passenger - Reservation - Flight
   * A passenger have 0 to many reservations
   * A flight have 0 to many reservations
   * Each reservation must be associated with exactly one passenger and exactly one flight
   * This relationship represents a many-to-many association between Passenger and Flight, resolved by the Reservation

2. Flight - Airport
   * Each flight must have exactly one departure airport and one arrival airport
   * An airport have 0 to many departing flights
   * An airport have 0 to many arriving flights


### Optionality rules

3. A passenger exist without reservations
4. A flightexist without reservations
5. A reservation cannot exist without both a valid passenger and a valid flight
6. Seat assignment in a reservation is mandatory if the reservation is confirmed


### Key constraints

7. Each passenger has a unique identifier (Passenger ID)
8. Each flight has a unique identifier (Flight ID)
9. Each reservation has a unique identifier (Reservation ID)
10. A passenger cannot have more than one reservation for the same flight


### Domain constraints

11. A seat number is unique per flight
12. The number of reservations for a flight can not exceed the flight’s capacity
13. Departure airport and arrival airport must be different for a flight
14. Flight departure time must be earlier than arrival time


### Referential integrity rules

15. A reservation has an existing passenger
16. A reservation has an existing flight
17. A flight cannot be deleted if active reservations exist
18. A passenger cannot be deleted if active reservations exist


### Data integrity and validation rules

19. Passenger email addresses must be unique
20. Reservation status must be one of a predefined set
21. Airport codes must be unique and follow standard format