--Library

CREATE TABLE book(
    book_id varchar() PRIMARY KEY,
    title varchar() not null,
    publisher_name varchar() not null 

) 

CREATE TABLE book_author(
    book_id varchar() PRIMARY KEY,
    author_name varchar() not null,

)

CREATE TABLE publisher(
    name_ varchar() PRIMARY KEY,
    address_ varchar() not null,
    phone varchar() not null unique,

)

CREATE TABLE book_copies(
    book_id varchar() FOREIGN KEY,
    branch_id varchar() PRIMARY KEY,
    no_of_copies varchar() not null,

)

CREATE TABLE book_loans(
    book_id varchar() PRIMARY KEY,
    branch_id varchar() FOREIGN KEY,
    card_no varchar() not null,
    date_out varchar(8) not null,
    due_date varchar() not null,
)

CREATE TABLE library_branch(
    branch_id varchar() PRIMARY KEY,
    branch_name varchar() not null unique,
    address_ varchar() not null,
)

CREATE TABLE borrower(
    card_no varchar() PRIMARY KEY,
    name_ varchar() not null, 
    address_ varchar() not null,
)