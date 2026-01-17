--airport
create table airport (
    airport_id varchar(10) primary key,
    code varchar(3) not null unique,
    name varchar(50) not null,
    city varchar(20) not null,
    country varchar(20) not null
);
--passenger
create table passenger (
    passenger_id varchar(10) primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    email varchar(40) not null unique,
    phone_number varchar(9)
);
--flight
create table flight (
    flight_id varchar(10) primary key,
    flight_number varchar(10) not null unique,
    departure_time timestamp not null,
    arrival_time timestamp not null,
    capacity int not null check (capacity > 0),
    departure_airport_id varchar(10) not null,
    arrival_airport_id varchar(10) not null,
    constraint fk_departure_airport
        foreign key (departure_airport_id)
        references airport (airport_id),
    constraint fk_arrival_airport
        foreign key (arrival_airport_id)
        references airport (airport_id),
    constraint chk_airports_different
        check (departure_airport_id <> arrival_airport_id),
    constraint chk_flight_time
        check (departure_time < arrival_time)
);
-- reservation (bridge table)
create table reservation (
    reservation_id varchar(10) primary key,
    passenger_id varchar(10) not null,
    flight_id varchar(10) not null,
    seat_number int not null,
    status varchar(15) not null,
    booking_time timestamp not null,
    constraint fk_passenger
        foreign key (passenger_id)
        references passenger (passenger_id)
        on delete RESTRICT,
    constraint fk_flight
        foreign key (flight_id)
        references flight (flight_id)
        on delete RESTRICT,
    constraint uq_passenger_flight
        unique (passenger_id, flight_id),
    constraint uq_flight_seat
        unique (flight_id, seat_number),
    constraint chk_reservation_status
        check (status in ('booked', 'canceled', 'completed'))
);