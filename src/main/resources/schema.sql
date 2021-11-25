CREATE TABLE IF NOT EXISTS Organization (
                                            id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
                                            version INTEGER NOT NULL COMMENT 'Service field hibernate',
                                            name VARCHAR(50) NOT NULL,
                                            full_name VARCHAR(50) NOT NULL,
                                            inn VARCHAR(12) NOT NULL COMMENT 'Taxpayer Identification Number',
                                            kpp VARCHAR(9) NOT NULL COMMENT 'Code of the reason for registration',
                                            address    VARCHAR(50) NOT NULL,
                                            phone VARCHAR(16),
                                            is_active BIT COMMENT '1 is true, 0 is false'
);

CREATE TABLE IF NOT EXISTS Office (
                                      id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
                                      version INTEGER NOT NULL COMMENT 'Service field hibernate',
                                      organization_id INTEGER NOT NULL,
                                      name VARCHAR(50) NOT NULL,
                                      address    VARCHAR(50) NOT NULL,
                                      phone VARCHAR(16),
                                      is_active BIT COMMENT '1 is true, 0 is false'
);

CREATE TABLE IF NOT EXISTS Person (
                                      id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
                                      version INTEGER NOT NULL COMMENT 'Service field hibernate',
                                      office_id INTEGER NOT NULL,
                                      first_name VARCHAR(50) NOT NULL,
                                      second_name VARCHAR(50),
                                      middle_name VARCHAR(50),
                                      post VARCHAR(50) NOT NULL,
                                      phone VARCHAR(16),
                                      is_identified BIT COMMENT '1 is true, 0 is false'
);

CREATE TABLE IF NOT EXISTS Doc (
                                   id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
                                   version INTEGER NOT NULL COMMENT 'Service field hibernate',
                                   person_id INTEGER NOT NULL,
                                   doc_type_id INTEGER NOT NULL,
                                   doc_number VARCHAR(12) NOT NULL,
                                   doc_date VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS TypeDoc (
                                       id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
                                       name VARCHAR(50) NOT NULL,
                                       code VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS Country (
                                       id INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
                                       version INTEGER NOT NULL COMMENT 'Service field hibernate',
                                       name VARCHAR(50) NOT NULL,
                                       code VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS Person_Country (
                                              person_id INTEGER COMMENT 'Unique identifier person',
                                              country_id INTEGER COMMENT 'Unique identifier country'
);

ALTER TABLE Office ADD FOREIGN KEY (organization_id) REFERENCES Organization(id);

ALTER TABLE Person ADD FOREIGN KEY (office_id) REFERENCES Office(id);

ALTER TABLE Doc ADD FOREIGN KEY (person_id) REFERENCES Person(id);

ALTER TABLE Doc ADD FOREIGN KEY (doc_type_id) REFERENCES TypeDoc(id);

ALTER TABLE Person_Country ADD FOREIGN KEY (person_id) REFERENCES Person(id);
ALTER TABLE Person_Country ADD FOREIGN KEY (country_id) REFERENCES Country(id);