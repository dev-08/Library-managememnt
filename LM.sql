-- Kindly run each block for quicker execution
CREATE TABLE Members
(member_id VARCHAR(9),
Email VARCHAR(15),
Address VARCHAR(15),
first_name VARCHAR(7),
last_name VARCHAR(7),
PRIMARY KEY(member_id) );

-- Table created to represent multvalue attribute.
CREATE TABLE StudentphoneNo 
(member_id VARCHAR(9),
phone NUMERIC(10,0) ,
PRIMARY KEY (phone));

CREATE TABLE Librarians
(librarian_id VARCHAR(9),
first_name VARCHAR(7),
last_name VARCHAR(7),
email VARCHAR(15),
PRIMARY KEY (librarian_id));

CREATE TABLE Records
(record_id NUMERIC(5,0),
ISBN VARCHAR(10),
member_id VARCHAR(9),
issueorreturn VARCHAR(6),
PRIMARY KEY (record_id));

--From now onwards the multivaued attributes are represented in large VARCHAR.
--Here the multi values can be seperated with comma.
CREATE TABLE Documents
(ISBN VARCHAR(10),
 title VARCHAR(10),
 citation VARCHAR(50),
PRIMARY KEY (ISBN));

-- Table created to represent relationship attributes
CREATE TABLE takes
(ISBN VARCHAR(10),
date_taken VARCHAR(10),
due_date VARCHAR(10),
PRIMARY KEY (ISBN),
FOREIGN KEY (ISBN) REFERENCES Documents);

CREATE TABLE Books
(ISBN VARCHAR(10),
 authors VARCHAR(50),
 editions VARCHAR(2),
 publisher VARCHAR(10),
 publiched_year VARCHAR(4),
PRIMARY KEY (ISBN));

CREATE TABLE Articles
(ISBN VARCHAR(10),
 journal_title VARCHAR(7),
 publisher_name VARCHAR(10),
 publication_date VARCHAR(10),
 editors VARCHAR(10),
 authors VARCHAR(50),
PRIMARY KEY (ISBN));

CREATE TABLE magazines
(ISBN VARCHAR(10),
 magazine_name VARCHAR(10),
 published_time VARCHAR(10),
 editors VARCHAR(40),
 contributors VARCHAR(50),
PRIMARY KEY (ISBN));

CREATE TABLE thesis
(ISBN VARCHAR(10),
 authors VARCHAR(50),
 advisor_name VARCHAR(10),
 completed_date VARCHAR(10),
PRIMARY KEY (ISBN));

CREATE TABLE Research_paper
(ISBN VARCHAR(10),
 authors VARCHAR(50),
 journal_name VARCHAR(10),
 published_date VARCHAR(10),
PRIMARY KEY (ISBN));
