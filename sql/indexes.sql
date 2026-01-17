create index idx_reservation_passenger
on reservation (passenger_id);

create index idx_reservation_flight
on reservation (flight_id);