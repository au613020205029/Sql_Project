create database BusBooking

use BusBooking;

CREATE TABLE Passenger (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    age INT NOT NULL
);
Insert into passenger values(1, 'Doe', 'doe@example.com', '1234567890', 'Male', 34);
Insert into passenger values(2, 'Smith', 'smith@example.com', '2345678901', 'Female', 29);
Insert into passenger values(3, 'Johnson', 'johnson@example.com', '3456789012', 'Male', 40);
Insert into passenger values(4, 'Davis', 'davis@example.com', '4567890123', 'Female', 22);
Insert into passenger values(5, 'Brown', 'brown@example.com', '5678901234', 'Male', 28);
Insert into passenger values(6, 'Wilson', 'wilson@example.com', '6789012345', 'Female', 35);
Insert into passenger values(7, 'Taylor', 'taylor@example.com', '7890123456', 'Male', 30);
Insert into passenger values(8, 'Miller', 'sophia.miller@example.com', '8901234567', 'Female', 26);
Insert into passenger values(9, 'Moore', 'moore@example.com', '9012345678', 'Male', 33);
Insert into passenger values(10, 'Martinez', 'martinez@example.com', '0123456789', 'Female', 27);
Insert into passenger values(11, 'Garcia', 'garcia@example.com', '2345678902', 'Male', 25);
Insert into passenger values(12, 'Rodriguez', 'rodriguez@example.com', '3456789013', 'Female', 24);
Insert into passenger values(13, 'Hernandez', 'hernandez@example.com', '4567890124', 'Male', 21);
Insert into passenger values(14, 'Lopez', 'lopez@example.com', '5678901235', 'Female', 29);
Insert into passenger values(15, 'Gonzalez', 'gonzalez@example.com', '6789012346', 'Male', 31);
Insert into passenger values(16, 'Perez', 'perez@example.com', '7890123457', 'Female', 22);
Insert into passenger values(17, 'Leo', 'leo@example.com', '8901234568', 'Male', 28);
Insert into passenger values(18, 'White', 'white@example.com', '9012345679', 'Female', 30);
Insert into passenger values (19, 'Lopez', 'lopez@example.com', '0123456790', 'Male', 27);
Insert into passenger values(20, 'Lily', 'lily@example.com', '1234567891', 'Female', 25);
Insert into passenger values(19, 'Ethan', 'ethan@example.com', '2345678903', 'Male', 34);
Insert into passenger values(20, 'Isabella', 'isabella@example.com', '3456789014', 'Female', 23);

create table Bus (
    bus_id int PRIMARY KEY,  
    bus_number  varchar(50)  NOT NULL, 
    capacity int   NOT NULL,                  
    bus_type  ENUM('AC', 'Non-AC')  NOT NULL, 
    operator_name varchar(100) NOT NULL 
    );
Insert into Bus values(10, 'BUS001', 50, 'AC', 'Global Travels');
Insert into Bus values (20, 'BUS002', 40, 'Non-AC', 'City Bus Service');
Insert into Bus values (30, 'BUS003', 60, 'AC', 'Royal Bus Operators');
Insert into Bus values (40, 'BUS004', 35, 'Non-AC', 'Speedy Bus Co.');
Insert into Bus values (50, 'BUS005', 70, 'AC', 'Luxury Rides');
Insert into Bus values (60, 'BUS006', 45, 'Non-AC', 'Eco-Friendly Rides');
Insert into Bus values (70, 'BUS007', 30, 'AC', 'Skyline Express');
Insert into Bus values (80, 'BUS008', 25, 'Non-AC', 'Trail Blazers');
Insert into Bus values (90, 'BUS009', 55, 'AC', 'Nightline Travels');
Insert into Bus values (91, 'BUS010', 40, 'Non-AC', 'Urban Transport Inc.');
Insert into Bus values (92, 'BUS011', 65, 'AC', 'Elite Travels');
Insert into Bus values (93, 'BUS012', 50, 'Non-AC', 'Budget Bus Services');
Insert into Bus values (94, 'BUS014', 35, 'Non-AC', 'Quick Commute Ltd.');
Insert into Bus values (95, 'BUS015', 70, 'AC', 'Skyline Rides');
Insert into Bus values (96, 'BUS016', 45, 'Non-AC', 'Green Horizon');
Insert into Bus values (97, 'BUS017', 30, 'AC', 'Adventure Travels');
Insert into Bus values (98, 'BUS018', 40, 'Non-AC', 'Urban Transport Co.');
Insert into Bus values (99, 'BUS019', 60, 'AC', 'Classic Coaches');
Insert into Bus values (81, 'BUS020', 50, 'Non-AC', 'Western Star Transport');
Insert into Bus values (82, 'BUS021', 65, 'AC', 'Laksmmi Services');

create table Route (
    route_id int PRIMARY KEY ,
    source varchar(100) NOT NULL,
    destination varchar(100) NOT NULL,
    distance int NOT NULL
);
Insert into Route values (100,'City A', 'City B', 150);
Insert into Route values (200,'City A', 'City C', 200);
Insert into Route values (300,'City B', 'City D', 180);
Insert into Route values (400,'City C', 'City D', 220);
Insert into Route values (500,'City A', 'City D', 250);
Insert into Route values (600,'City A', 'City E', 300);
Insert into Route values (700,'City B', 'City C', 100);
Insert into Route values (900,'City D', 'City E', 120);
Insert into Route values (110,'City B', 'City F', 130);
Insert into Route values (210,'City C', 'City F', 160);
Insert into Route values (310,'City E', 'City F', 110);
Insert into Route values (410,'City A', 'City F', 280);
Insert into Route values (510,'City A', 'City G', 350);
Insert into Route values (610,'City B', 'City G', 400);
Insert into Route values (710,'City C', 'City G', 450);
Insert into Route values (810,'City D', 'City G', 470);
Insert into Route values (910,'City E', 'City G', 300);
Insert into Route values (120,'City F', 'City G', 200);
Insert into Route values (220,'City A', 'City H', 500);
Insert into Route values (320,'City B', 'City H', 520);

Create table Schedule (
    schedule_id  int PRIMARY KEY,
    bus_id  int NOT NULL,
    route_id  int NOT NULL,
    departure_time datetime NOT NULL,
    arrival_time datetime NOT NULL,
    travel_date date NOT NULL,
    FOREIGN KEY (bus_id) REFERENCES Bus(bus_id),
    FOREIGN KEY (route_id) REFERENCES Route(route_id)
);
Insert into Schedule values(1000, 10,100, '2024-01-01 08:00:00', '2024-01-01 12:00:00', '2024-01-01');
Insert into Schedule values (1001, 20,200, '2024-01-02 09:00:00', '2024-01-02 13:00:00', '2024-01-02');
Insert into Schedule values (1002, 30,300, '2024-01-03 10:00:00', '2024-01-03 14:00:00', '2024-01-03');
Insert into Schedule values (1003, 40,400, '2024-01-04 11:00:00', '2024-01-04 15:00:00', '2024-01-04');
Insert into Schedule values (1004, 50,500, '2024-01-05 12:00:00', '2024-01-05 16:00:00', '2024-01-05');
Insert into Schedule values (1005, 60, 600,'2024-01-06 13:00:00', '2024-01-06 17:00:00', '2024-01-06');
Insert into Schedule values (1006, 70,700, '2024-01-07 14:00:00', '2024-01-07 18:00:00', '2024-01-07');
Insert into Schedule values (1007, 80,900, '2024-01-08 15:00:00', '2024-01-08 19:00:00', '2024-01-08');
Insert into Schedule values (1008, 90,110, '2024-01-09 16:00:00', '2024-01-09 20:00:00', '2024-01-09');
Insert into Schedule values (1009,91,210, '2024-01-10 17:00:00', '2024-01-10 21:00:00', '2024-01-10');
Insert into Schedule values (1010, 92,310, '2024-01-11 18:00:00', '2024-01-11 22:00:00', '2024-01-11');
Insert into Schedule values (1011, 93,410, '2024-01-12 19:00:00', '2024-01-12 23:00:00', '2024-01-12');
Insert into Schedule values (1012,94,510, '2024-01-13 20:00:00', '2024-01-13 00:00:00', '2024-01-13');
Insert into Schedule values (1013, 95, 610,'2024-01-14 21:00:00', '2024-01-14 01:00:00', '2024-01-14');
Insert into Schedule values (1014, 96,710, '2024-01-15 22:00:00', '2024-01-15 02:00:00', '2024-01-15');
Insert into Schedule values (1015, 97, 810,'2024-01-16 23:00:00', '2024-01-17 03:00:00', '2024-01-16');
Insert into Schedule values (1016, 98,910, '2024-01-17 00:00:00', '2024-01-17 04:00:00', '2024-01-17');
Insert into Schedule values (1017, 99,120, '2024-01-18 01:00:00', '2024-01-18 05:00:00', '2024-01-18');
Insert into Schedule values (1018, 81,220, '2024-01-19 02:00:00', '2024-01-19 06:00:00', '2024-01-19');
Insert into Schedule values (1019, 82,320, '2024-01-20 03:00:00', '2024-01-20 07:00:00', '2024-01-20');

CREATE TABLE Booking (
    booking_id INT PRIMARY KEY ,
    passenger_id INT NOT NULL,
    schedule_id INT NOT NULL,
    seat_number INT NOT NULL,
    booking_date DATE NOT NULL,
    payment_status ENUM('Paid', 'Pending') NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES Passenger(passenger_id),
    FOREIGN KEY (schedule_id) REFERENCES Schedule(schedule_id)
);
Insert into Booking values(101,1, 1000, 201, '2024-01-01', 'Paid');
Insert into Booking values(102, 2,1001, 202, '2024-01-02', 'Pending');
Insert into Booking values(103, 3,1002, 203, '2024-01-01', 'Paid');
Insert into Booking values(104, 4,1003, 204, '2024-01-03', 'Paid');
Insert into Booking values(105, 5,1004, 205, '2024-01-04', 'Pending');
Insert into Booking values(106, 6,1005, 206, '2024-01-05', 'Paid');
Insert into Booking values(107,7, 1006, 207, '2024-01-06', 'Pending');
Insert into Booking values(108,8, 1007,208 , '2024-01-01', 'Paid');
Insert into Booking values(109, 9,1008, 209, '2024-01-07', 'Paid');
Insert into Booking values(110, 10,1009, 210, '2024-01-08', 'Pending');
Insert into Booking values(111,11, 1010, 211, '2024-01-09', 'Paid');
Insert into Booking values(112,12, 1011, 212, '2024-01-02', 'Paid');
Insert into Booking values(113,13, 1012, 213, '2024-01-03', 'Pending');
Insert into Booking values(114,14, 1013, 214, '2024-01-04', 'Paid');
Insert into Booking values(115,15, 1014,215, '2024-01-05', 'Pending');
Insert into Booking values(116,16, 1015, 216, '2024-01-06', 'Paid');
Insert into Booking values(117, 17,1016, 217, '2024-01-01', 'Pending');
Insert into Booking values(118, 18,1017, 218, '2024-01-07', 'Paid');
Insert into Booking values(119, 19,1018, 219, '2024-01-08', 'Pending');
Insert into Booking values(120, 20,1019, 220, '2024-01-09', 'Paid');

CREATE VIEW PassengerDetails AS 
SELECT 
    schedule.schedule_id,
    bus.bus_number,
    Route.source,
    Route.destination,
    schedule.departure_time,
    schedule.arrival_time
FROM Schedule
JOIN  bus ON schedule.bus_id =bus.bus_id
JOIN Route ON schedule.route_id = Route.route_id;

SELECT * FROM Booking WHERE booking_date = '2024-01-05';

SELECT bus_type, COUNT(*) AS total_buses FROM Bus GROUP BY bus_type;

SELECT * FROM Route WHERE distance >=300;

SELECT name, email, booking_date, payment_status 
FROM Passenger  
INNER JOIN Booking ON Passenger.passenger_id = booking.passenger_id;

SELECT Route.source, Route.destination, COUNT(Booking.booking_id) AS total_bookings
FROM Route 
JOIN Schedule Schedule ON Route.route_id = Schedule.route_id
JOIN Booking ON Schedule.schedule_id = Booking.schedule_id
GROUP BY Route.route_id;











