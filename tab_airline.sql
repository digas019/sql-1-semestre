--Airline

CREATE TABLE airport(
    airport_code varchar() PRIMARY KEY,
    name_ varchar()  not null unique,
    city varchar() not null,
    state_ varchar() not null,

)

CREATE TABLE flight(
    flight_number varchar() PRIMARY KEY,
    airline varchar() not null,
    weekdays varchar() not null,

)

CREATE TABLE flight_leg(
    flight_number varchar() FOREIGN KEY,
    leg_number varchar() PRIMARY KEY,
    departure_airport_code varchar() not null,
    scheduled_departure_time varchar() not null,
    arrival_airport_code varchar() not null,
    scheduled_arrival_time varchar() not null,

)

CREATE TABLE leg_instance(
    flight_number varchar() FOREIGN KEY,
    leg_number varchar() PRIMARY KEY,
    date_ varchar(8) not null,
    number_of_available_seats varchar() not null,
    airplane_id varchar() not null unique,
    departure_airport_code varchar() FOREIGN KEY,
    departure_time varchar(4) not null,
    arrival_airport_code varchar() FOREIGN KEY,
    arrival_time varchar(4) not null,
)

CREATE TABLE fare(
    flight_number varchar() FOREIGN KEY,
    fare_code varchar() PRIMARY KEY,
    amount varchar() not null,
    restrictions varchar() not null,

)

CREATE TABLE airplane_type(
    airplane_type_name varchar() PRIMARY KEY,
    max_seats varchar() not null,
    company varchar() not null,

)

CREATE TABLE can_land(
    airport_code varchar() PRIMARY KEY,
    airplane_type_name varchar() FOREIGN KEY,
)

CREATE TABLE airplane(
    airplane_id varchar() PRIMARY KEY,
    total_number_of_seats varchar() not null,
    airplane_type varchar() FOREIGN KEY
)

CREATE TABLE seat_reservation(
    flight_number varchar() PRIMARY KEY,
    leg_number varchar() FOREIGN KEY,
    date_ varchar(8) not null,
    seat_number varchar() not null,
    costumer_name varchar() not null unique
    costumer_phone varchar() not null unique
)