INSERT INTO Organization (name, full_name, inn, kpp) VALUES ("MTS", "Mobile Tele Systems", "123098123098", "123098123");
INSERT INTO Organization (name, full_name, inn, kpp) VALUES ("Beeline", "Bee Line GSM", "323098123785", "323095721");
INSERT INTO Organization (name, full_name, inn, kpp) VALUES ("Tele2", "Tele2 AB", "243098123012", "243098154");

INSERT INTO Office (id_organization, name, address,  phone, is_active) VALUES (1, "MTS General Office", "Moscow, Pokrovskay street, 17.", "+7(956)345-23-21", 1);
INSERT INTO Office (id_organization, name, address,  phone, is_active) VALUES (1, "MTS Second Office", "Saint-Petersburg, Varvaskay street, 21.", "+7(968)345-22-19", 1);
INSERT INTO Office (id_organization, name, address,  phone, is_active) VALUES (2, "Beeline General Office", "Moscow, Severnay street, 15.", "+7(999)345-23-22", 1);
INSERT INTO Office (id_organization, name, address,  phone, is_active) VALUES (2, "Beeline Second Office", "Saint-Petersburg, Mayakovskay street, 12.", "+7(912)345-23-12", 0);
INSERT INTO Office (id_organization, name, address,  phone, is_active) VALUES (3, "Tele2 General Office", "Moscow, Vinogradova street, 1.", "+7(918)345-23-25", 0);
INSERT INTO Office (id_organization, name, address,  phone, is_active) VALUES (3, "Tele2 Second Office", "Saint-Petersburg, Ilinskay street, 2.", "+7(925)343-23-88", 1);

INSERT INTO Users (id_office, first_name, second_name, post, phone, citizenship_id, is_identified) VALUES (1, "Kirsenko", "Konstantin", "manager", "+7(955)345-23-55", 1, 1);
INSERT INTO Users (id_office, first_name, second_name, post, phone, citizenship_id, is_identified) VALUES (1, "Pochinka", "Arseny", "provider", "+7(912)345-23-56", 1, 1);
INSERT INTO Users (id_office, first_name, second_name, post, phone, citizenship_id, is_identified) VALUES (2, "Khafizov", "Timur", "doctor", "+7(912)345-23-12", 2, 1);
INSERT INTO Users (id_office, first_name, second_name, post, phone, citizenship_id, is_identified) VALUES (3, "Usachev", "Ilia", "manager", "+7(954)345-23-67", 3, 1);
INSERT INTO Users (id_office, first_name, second_name, post, phone, citizenship_id, is_identified) VALUES (4, "Mahov", "Dmitriy", "provider", "+7(942)345-23-43", 1, 1);
INSERT INTO Users (id_office, first_name, second_name, post, phone, citizenship_id, is_identified) VALUES (5, "Fedorov", "Victor", "doctor", "+7(932)347-22-51", 1, 1);
INSERT INTO Users (id_office, first_name, second_name, post, phone, citizenship_id, is_identified) VALUES (6, "Kirov", "Kirill", "manager", "+7(953)345-23-48", 1, 1);
INSERT INTO Users (id_office, first_name, second_name, post, phone, citizenship_id, is_identified) VALUES (6, "Firsov", "Konstantin", "provider", "+7(942)345-23-42", 2, 1);
INSERT INTO Users (id_office, first_name, second_name, post, phone, citizenship_id, is_identified) VALUES (6, "Nikulin", "Vasiliy", "doctor", "+7(965)345-23-32", 3, 0);

INSERT INTO Docs (docs_id, type_id, doc_number, doc_date) VALUES (1, 1, "45 12 342342", "24/12/2012");
INSERT INTO Docs (docs_id, type_id, doc_number, doc_date) VALUES (2, 1, "46 19 442343", "12/03/2002");
INSERT INTO Docs (docs_id, type_id, doc_number, doc_date) VALUES (3, 2, "49 23 547834", "01/12/2015");
INSERT INTO Docs (docs_id, type_id, doc_number, doc_date) VALUES (4, 3, "45 11 123422", "23/11/2006");
INSERT INTO Docs (docs_id, type_id, doc_number, doc_date) VALUES (5, 1, "12 23 232342", "12/12/2015");
INSERT INTO Docs (docs_id, type_id, doc_number, doc_date) VALUES (6, 1, "48 12 346782", "09/03/1995");
INSERT INTO Docs (docs_id, type_id, doc_number, doc_date) VALUES (7, 2, "12 25 342409", "01/02/2013");
INSERT INTO Docs (docs_id, type_id, doc_number, doc_date) VALUES (8, 3, "01 02 517586", "22/10/2016");

INSERT INTO TypeDoc (name, code) VALUES ("Passport of a citizen of the Russian Federation", "21");
INSERT INTO TypeDoc (name, code) VALUES ("Passport of a citizen of Ukraine", "45");
INSERT INTO TypeDoc (name, code) VALUES ("Passport of a citizen of Belarus", "23");

INSERT INTO Countries (name, code) VALUES ("Russian Federation", "643");
INSERT INTO Countries (name, code) VALUES ("Ukraine", "254");
INSERT INTO Countries (name, code) VALUES ("Belarus", "512");





