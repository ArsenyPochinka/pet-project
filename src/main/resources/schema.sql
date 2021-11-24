CREATE TABLE IF NOT EXISTS Organization (
    id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    inn VARCHAR(12) NOT NULL COMMENT 'Taxpayer Identification Number' UNIQUE,
    kpp VARCHAR(9) NOT NULL COMMENT 'Code of the reason for registration' UNIQUE,
);

ALTER TABLE Organization ADD FOREIGN KEY (id) REFERENCES Office(id_organization);

CREATE TABLE IF NOT EXISTS Office (
    id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
    id_organization  INTEGER NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    address    VARCHAR(50) NOT NULL,
    phone VARCHAR(16) UNIQUE,
    is_active BIT COMMENT '1 is true, 0 is false'
);

ALTER TABLE Office ADD FOREIGN KEY (id) REFERENCES Office(id_office);

CREATE TABLE IF NOT EXISTS Users (
    id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
    id_office INTEGER,
    first_name VARCHAR(50) NOT NULL,
    second_name VARCHAR(50),
    middle_name VARCHAR(50),
    post VARCHAR(50) NOT NULL,
    phone VARCHAR(16) UNIQUE,
    citizenship_id INTEGER,
    is_identified BIT COMMENT '1 is true, 0 is false'
);

ALTER TABLE Users ADD FOREIGN KEY (id) REFERENCES Docs(doc_id);
ALTER TABLE Users ADD FOREIGN KEY (citizenship_id) REFERENCES Countries(id);

CREATE TABLE IF NOT EXISTS Docs (
    doc_id INTEGER NOT NULL UNIQUE PRIMARY KEY,
    type_id INTEGER NOT NULL,
    doc_number INTEGER NOT NULL UNIQUE,
    doc_date VARCHAR(10) NOT NULL
);

ALTER TABLE Docs ADD FOREIGN KEY (type_id) REFERENCES TypeDoc(id);

CREATE TABLE IF NOT EXISTS TypeDoc (
    id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS Countries (
    id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(10) NOT NULL
);