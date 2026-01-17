create view flight_reservation_summary as
select flight.flight_id, flight.flight_number, count(reservation.reservation_id) as booked_seats
from flight
left join reservation on flight.flight_id = reservation.flight_id and reservation.status = 'booked'
group by flight.flight_id, flight.flight_number;