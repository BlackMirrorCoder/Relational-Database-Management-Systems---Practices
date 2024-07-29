
CREATE TABLE Branch
(
    branchNo VARCHAR(4) NOT NULL PRIMARY KEY,
    street   VARCHAR(50),
    city     VARCHAR(50),
    postcode VARCHAR(10)
);

CREATE TABLE Staff
(
    staffNo VARCHAR(4) PRIMARY KEY,
    fName   VARCHAR(50),
    lName   VARCHAR(50),
    position    VARCHAR(50),
    sex VARCHAR(1),
    DOB DATE,
    salary  INT,
    branchNo    VARCHAR(4),
    FOREIGN KEY (branchNo) REFERENCES Branch (branchNo)
);

INSERT INTO Branch (branchNo, street, city, postcode)
VALUES ('B005', '22 Deer Rd', 'London', 'SW1 4EH'),
       ('B007', '16 Argyll', 'Aberdeen', 'AB2 3SU');

INSERT INTO Branch (branchNo, street, city, postcode)
VALUES ('B003', '163 Main St', 'Glasgow', 'G11 9QX'),
       ('B004', '32 Manse Rd', 'Bristol', 'BS99 1NZ'),
       ('B002', '56 Clover Dr', 'London', 'NW10 6EU');

INSERT INTO Staff (staffNo, fName, lName, position, sex, DOB, salary, branchNo)
VALUES ('SL21', 'John', 'White', 'Manager', 'M', '1945-10-01', '30000', 'B005'),
       ('SG37', 'Ann', 'Beech', 'Assistant', 'F', '1960-11-10', '12000', 'B003'),
       ('SG14', 'David', 'Ford', 'Supervisor', 'M', '1958-03-24', '18000', 'B003');

INSERT INTO Staff (staffNo, fName, lName, position, sex, DOB, salary, branchNo)
VALUES ('SA9', 'Mary', 'Howe', 'Assistant', 'F', '1970-02-19', '9000','B007'),
       ('SG5', 'Susan', 'Brand', 'Manager', 'F', '1940-06-03', '24000', 'B003'),
       ('SL41', 'Julie', 'Lee', 'Assistant', 'F', '1965-06-13', '9000', 'B005');


SELECT * FROM Branch;

SELECT fname, lName, salary FROM Staff WHERE salary >= 12000;
