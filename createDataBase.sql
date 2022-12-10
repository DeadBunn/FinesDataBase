CREATE DATABASE IF NOT EXISTS Fines;
USE Fines;
CREATE TABLE IF NOT EXISTS Intruders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fio VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS PoliceOfficers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fio VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS Fines (
    id INT PRIMARY KEY,
    intruder INT NOT NULL,
    policeOfficer INT NOT NULL,
    carNumber VARCHAR(6) NOT NULL,
    sum INT NOT NULL,
    supboena BOOLEAN NOT NULL,
    paid BOOLEAN NOT NULL,
    deadline DATE NOT NULL,
    paymentDay DATE,
    time_fine TIME NOT NULL,
    FOREIGN KEY (intruder)
        REFERENCES Intruders (id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (policeOfficer)
        REFERENCES PoliceOfficers (id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
