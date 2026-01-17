insert into airport values
('A1', 'JFK', 'John F Kennedy Intl', 'New York', 'USA'),
('A2', 'LAX', 'Los Angeles Intl', 'Los Angeles', 'USA'),
('A3', 'ORD', 'OHare Intl', 'Chicago', 'USA'),
('A4', 'ATL', 'Hartsfield Jackson', 'Atlanta', 'USA'),
('A5', 'LHR', 'Heathrow', 'London', 'UK');

insert into passenger values
('P1', 'John', 'Doe', 'john.doe@email.com', '123456789'),
('P2', 'Jane', 'Smith', 'jane.smith@email.com', '123456788'),
('P3', 'Alice', 'Brown', 'alice.brown@email.com', '123456787'),
('P4', 'Bob', 'White', 'bob.white@email.com', '123456786'),
('P5', 'Carol', 'Green', 'carol.green@email.com', '123456785'),
('P6', 'David', 'Black', 'david.black@email.com', '123456784'),
('P7', 'Emma', 'Stone', 'emma.stone@email.com', '123456783'),
('P8', 'Frank', 'Miller', 'frank.miller@email.com', '123456782'),
('P9', 'Grace', 'Hall', 'grace.hall@email.com', '123456781'),
('P10', 'Henry', 'Adams', 'henry.adams@email.com', '123456780'),
('P11', 'Ivy', 'Clark', 'ivy.clark@email.com', '123456779'),
('P12', 'Jack', 'Turner', 'jack.turner@email.com', '123456778'),
('P13', 'Kate', 'Lewis', 'kate.lewis@email.com', '123456777'),
('P14', 'Leo', 'Walker', 'leo.walker@email.com', '123456776'),
('P15', 'Mia', 'Young', 'mia.young@email.com', '123456775');

insert into flight values
('F1', 'FL100', '2026-01-10 08:00', '2026-01-10 12:00', 100, 'A1', 'A2'),
('F2', 'FL200', '2026-01-11 09:00', '2026-01-11 13:00', 120, 'A2', 'A3'),
('F3', 'FL300', '2026-01-12 10:00', '2026-01-12 14:00', 90, 'A3', 'A4'),
('F4', 'FL400', '2026-01-13 11:00', '2026-01-13 15:00', 110, 'A4', 'A5'),
('F5', 'FL500', '2026-01-14 12:00', '2026-01-14 20:00', 150, 'A5', 'A1');

insert into reservation values
('R1', 'P1', 'F1', 1, 'booked', '2026-01-01 10:00'),
('R2', 'P2', 'F1', 2, 'booked', '2026-01-01 10:05'),
('R3', 'P3', 'F1', 3, 'booked', '2026-01-01 10:10'),
('R4', 'P4', 'F1', 4, 'completed', '2026-01-01 10:15'),
('R5', 'P5', 'F1', 5, 'canceled', '2026-01-01 10:20'),
('R6', 'P6', 'F2', 1, 'booked', '2026-01-02 09:00'),
('R7', 'P7', 'F2', 2, 'booked', '2026-01-02 09:05'),
('R8', 'P8', 'F2', 3, 'completed', '2026-01-02 09:10'),
('R9', 'P9', 'F2', 4, 'booked', '2026-01-02 09:15'),
('R10', 'P10', 'F2', 5, 'canceled', '2026-01-02 09:20'),
('R11', 'P11', 'F3', 1, 'booked', '2026-01-03 08:00'),
('R12', 'P12', 'F3', 2, 'booked', '2026-01-03 08:05'),
('R13', 'P13', 'F3', 3, 'completed', '2026-01-03 08:10'),
('R14', 'P14', 'F3', 4, 'booked', '2026-01-03 08:15'),
('R15', 'P15', 'F3', 5, 'canceled', '2026-01-03 08:20'),
('R16', 'P1', 'F4', 1, 'booked', '2026-01-04 11:00'),
('R17', 'P2', 'F4', 2, 'completed', '2026-01-04 11:05'),
('R18', 'P3', 'F4', 3, 'booked', '2026-01-04 11:10'),
('R19', 'P4', 'F4', 4, 'booked', '2026-01-04 11:15'),
('R20', 'P5', 'F4', 5, 'canceled', '2026-01-04 11:20'),
('R21', 'P6', 'F5', 1, 'booked', '2026-01-05 12:00'),
('R22', 'P7', 'F5', 2, 'booked', '2026-01-05 12:05'),
('R23', 'P8', 'F5', 3, 'completed', '2026-01-05 12:10'),
('R24', 'P9', 'F5', 4, 'booked', '2026-01-05 12:15'),
('R25', 'P10', 'F5', 5, 'canceled', '2026-01-05 12:20');
