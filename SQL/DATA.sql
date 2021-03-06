--  data for account table
INSERT INTO account VALUES
(1, 2, 'Maksim', 'Sokolov', 'admin@rent.com', '+375445556644', 'ID_123456','Belarus, Minsk, Mira 54 - 45', 'ND123234', 0, 1),
(2, 1, 'Oleg', 'Smirnov', 'oleg@main.ru', '+375291596878', 'ID_1232344','Belarus, Minsk, Kolosa 8 - 98', 'ND4235523', 800, 1),
(3, 1, 'Ivan', 'Petrov', 'ivan@gmail.com', '+375293698521', 'ID_3333333','Belarus, Minsk, Semashko 99 - 1', 'MI9995582', 200, 1);

--  data for user table
INSERT INTO user VALUES
(1, 'Admin', '38-654929-72110-115-57-71-18-43-12-4111126110', 1),
(2, 'Oleg', '-43660-57-20-92-5347102-63-84-109-1007195-120', 2),
(3, 'Ivan', '-115-3745-6026-110-70-94120124-3287-9122-103-96', 3);

--     data for the price table
INSERT INTO price VALUES
    (1, 80, 15),
    (2, 150, 27),
    (3, 145, 24),
    (4, 110, 16),
    (5, 110, 16),
    (6, 120, 18),
    (7, 200, 50),
    (8, 180, 45),
    (9, 245, 70),
    (10, 60, 14),
    (11, 55, 13),
    (12, 70, 16),
    (13, 65, 15),
    (14, 90, 18),
    (15, 95, 19),
    (16, 85, 16);

-- data for machine table
INSERT INTO car VALUES
    (1, 'Volkswagen', 'Polo', 2021, 1, 4, 36, 1, 5, 'white', 1, 1),
    (2, 'Audi', 'A7', 2013, 3, 2, 38, 1, 5, 'gray', 1, 2),
    (3, 'BMW', 'X6', 2013, 3, 2, 38, 1, 5, 'gray', 1, 3),
    (4, 'Geely', 'Emgrand 7', 2016, 2, 4, 39, 1, 5, 'black', 1, 4),
    (5, 'Hyundai', 'i40', 2017, 2, 3, 25, 1, 5, 'brow', 0, 5),
    (6, 'Infiniti', 'FX FX35', 2007, 3, 3, 45, 1, 5, 'black', 1, 6),
    (7, 'Chevrolet', 'Corvette Z06 C7', 2014, 4, 5, 53, 0, 3, 'gray', 1, 7),
    (8, 'Mercedes-Benz', 'CL-Класс AMG 63', 2007, 3, 5, 23, 1, 3, 'black', 1, 8),
    (9, 'Audi', 'R8', 2011, 4, 5, 58, 1, 3, 'white', 0, 9),
    (10, 'Ford', 'Focus', 2016, 1, 4, 16, 0, 5, 'gray', 1, 10),
    (11, 'Opel', 'Astra', 2012, 1, 4, 38, 0, 5, 'gray', 1, 11),
    (12, 'Ford', 'Mondeo', 2007, 1, 1, 15, 0, 5, 'gray', 1, 12),
    (13, 'Renault', 'Logan', 2010, 1, 1, 26, 0, 5, 'gray', 1, 13),
    (14, 'Skoda', 'Octavia', 2012, 1, 1, 28, 0, 5, 'white', 1, 14),
    (15, 'Skoda', 'Superb', 2010, 2, 1, 49, 1, 5, 'white', 0, 15),
    (16, 'Volkswagen', 'Passat B6', 2008, 2, 1, 51, 1, 5, 'black', 1, 16);
