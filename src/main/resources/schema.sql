CREATE TABLE IF NOT EXISTS Organization (
    id        INTEGER COMMENT 'Unique organization identifier' PRIMARY KEY AUTO_INCREMENT,
    version   INTEGER NOT NULL COMMENT 'Service field hibernate',
    name      VARCHAR(50) NOT NULL COMMENT 'name',
    full_name VARCHAR(50) NOT NULL COMMENT 'full name',
    inn       VARCHAR(12) NOT NULL COMMENT 'Taxpayer Identification Number',
    kpp       VARCHAR(9) NOT NULL COMMENT 'Code of the reason for registration',
    address   VARCHAR(50) NOT NULL COMMENT 'address',
    phone     VARCHAR(16) COMMENT 'phone',
    is_active BIT COMMENT 'is active = 1 is true, 0 is false'
);

COMMENT ON TABLE Organization IS 'Organization';

CREATE TABLE IF NOT EXISTS Office (
    id              INTEGER COMMENT 'Unique office identifier' PRIMARY KEY AUTO_INCREMENT,
    version         INTEGER NOT NULL COMMENT 'Service field hibernate',
    organization_id INTEGER NOT NULL COMMENT 'unique organization identifier',
    name            VARCHAR(50) NOT NULL COMMENT 'name',
    address         VARCHAR(50) NOT NULL COMMENT 'address',
    phone           VARCHAR(16) COMMENT 'phone',
    is_active       BIT COMMENT 'is active = 1 is true, 0 is false'
);

COMMENT ON TABLE Office IS 'Office';

CREATE TABLE IF NOT EXISTS Person (
    id            INTEGER COMMENT 'Unique person identifier' PRIMARY KEY AUTO_INCREMENT,
    version       INTEGER NOT NULL COMMENT 'Service field hibernate',
    office_id     INTEGER NOT NULL COMMENT 'Unique office identifier',
    first_name    VARCHAR(50) NOT NULL COMMENT 'firstname',
    second_name   VARCHAR(50) COMMENT 'second name',
    middle_name   VARCHAR(50) COMMENT 'middle name',
    post          VARCHAR(50) NOT NULL COMMENT 'post',
    phone         VARCHAR(16) COMMENT 'phone',
    is_identified BIT COMMENT 'is identified = 1 is true, 0 is false'
);

COMMENT ON TABLE Person IS 'Person';

CREATE TABLE IF NOT EXISTS Doc (
    person_id   INTEGER NOT NULL COMMENT 'Unique person identifier' PRIMARY KEY,
    version     INTEGER NOT NULL COMMENT 'Service field hibernate',
    doc_type_id INTEGER NOT NULL COMMENT 'Unique type of doc identifier',
    doc_number  VARCHAR(12) NOT NULL COMMENT 'number of doc',
    doc_date    VARCHAR(10) NOT NULL COMMENT 'date of doc'
);

COMMENT ON TABLE Doc IS 'Doc';

CREATE TABLE IF NOT EXISTS TypeDoc (
    id   INTEGER COMMENT 'Unique type of doc identifier' PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL COMMENT 'name',
    code VARCHAR(10) NOT NULL COMMENT 'code'
);

COMMENT ON TABLE TypeDoc IS 'Type of doc';

CREATE TABLE IF NOT EXISTS Country (
    id      INTEGER COMMENT 'Unique identifier' PRIMARY KEY AUTO_INCREMENT,
    version INTEGER NOT NULL COMMENT 'Service field hibernate',
    name    VARCHAR(50) NOT NULL COMMENT 'name',
    code    VARCHAR(10) NOT NULL COMMENT 'code'
);

COMMENT ON TABLE Country IS 'Country';

CREATE TABLE IF NOT EXISTS Person_Country (
    person_id  INTEGER COMMENT 'Unique person identifier',
    country_id INTEGER COMMENT 'Unique country identifier'
);

COMMENT ON TABLE Person_Country IS 'join-table for connecting a person and a country';

ALTER TABLE Office ADD FOREIGN KEY (organization_id) REFERENCES Organization(id);

ALTER TABLE Person ADD FOREIGN KEY (office_id) REFERENCES Office(id);

ALTER TABLE Doc ADD FOREIGN KEY (person_id) REFERENCES Person(id);

ALTER TABLE Doc ADD FOREIGN KEY (doc_type_id) REFERENCES TypeDoc(id);

ALTER TABLE Person_Country ADD FOREIGN KEY (person_id) REFERENCES Person(id);
ALTER TABLE Person_Country ADD FOREIGN KEY (country_id) REFERENCES Country(id);