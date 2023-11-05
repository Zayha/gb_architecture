CREATE TABLE Client (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    phoneNumber INTEGER NOT NULL,
    hashPassword TEXT NOT NULL
);

CREATE TABLE Schedule (
    id SERIAL PRIMARY KEY,
    idClient INTEGER NOT NULL,
    idTable INTEGER NOT NULL,
    dateTime TIMESTAMP NOT NULL,
    countClient INTEGER NOT NULL,
    FOREIGN KEY (idClient) REFERENCES Client (id),
    FOREIGN KEY (idTable) REFERENCES Table (id)
);

CREATE TABLE Table (
    id SERIAL PRIMARY KEY,
    countClient INTEGER NOT NULL,
    idImageTable INTEGER NOT NULL,
    idHall INTEGER NOT NULL,
    FOREIGN KEY (idImageTable) REFERENCES ImageTable (id),
    FOREIGN KEY (idHall) REFERENCES Hall (id)
);

CREATE TABLE ImageTable (
    id SERIAL PRIMARY KEY,
    image TEXT NOT NULL
);

CREATE TABLE Hall (
    id SERIAL PRIMARY KEY,
    nameHall INTEGER NOT NULL,
    basePrice INTEGER NOT NULL
);