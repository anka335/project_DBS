## Entities

They are are sufficient to support CRUD operations and are fully normalized.
* Passenger - customers who can be booked on flights
* Flight - scheduled airline flights
* Airport - departure and arrival locations
* Reservation - bookings that link passengers to flights


## M:N relationship

Passengers and flights have a many-to-many relationship: a passenger can take many flights and a flight can have many passengers. For this purpose I used Reservations entity. It contains attributes that depend on the passenger–flight association.

## Cardinality and optionality

* A passenger may have zero or many reservations
* A flight may have zero or many reservations
* Each reservation must reference exactly one passenger and one flight
* An airport may be associated with many flights
* Each flight must have exactly one departure airport and one arrival airport

## Airport–flight relationships

Flights are connected to airports in two ways: departure and arrival. These are modeled as two separate relationships.

## ERD and UML

* The ERD emphasizes relational structure, keys, and cardinalities
* The UML Class Diagram focuses on classes and associations, omitting database-specific details