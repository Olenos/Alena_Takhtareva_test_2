CREATE TABLE IF NOT EXISTS employees (
    email VARCHAR (255) NOT NULL,
    name VARCHAR (255) NOT NULL,
    isactive BOOLEAN NOT NULL,
    salaryyear DOUBLE PRECISION NOT NULL,
    location VARCHAR (50) NOT NULL,
    PRIMARY KEY(email)
);

CREATE TABLE IF NOT EXISTS employeemanagers (
    employee VARCHAR (255) NOT NULL,
    manager VARCHAR (255) NOT NULL,
    CONSTRAINT fk_employees
      FOREIGN KEY(employee)
	    REFERENCES employees(email),
	CONSTRAINT fk_manager
      FOREIGN KEY(manager)
	    REFERENCES employees(email)
);

INSERT INTO employees (email, name, isactive, salaryyear, location) VALUES
('krutoiparen23@mail.ru', 'Igor', True, 5000, 'Perm'),
('kissulia1997@mail.ru', 'Julia', True, 3500, 'Perm'),
('olegolegoleg@gmail.com', 'Oleg', False, 4000, 'Perm'),
('meladze@yandex.ru', 'Valery', True, 5500, 'Perm'),
('vashanatasha@gmail.com', 'Natalie', False, 2000, 'Perm'),
('givemeoscar@gmail.com', 'Leonardo', True, 8000, 'LA'),
('angelinajolieofficial@mail.ru', 'Angelina', True, 7999, 'LA'),
('bloodyman@gmail.ru', 'Quentin', True, 5000, 'LA'),
('thetwilightsaga@yandex.ru', 'Robert', True, 4599, 'LA'),
('babayagaboogeyman@mail.ru', 'Keanu', True, 6000, 'LA'),
('transformers2007@gmail.com', 'Megan', False, 3000, 'LA'),
('keypop@mail.ru', 'Kim', True, 5000, 'Seoul'),
('amogus@yandex.ru', 'Jungkook', True, 4000, 'Seoul'),
('plssaveus@mail.ru', 'Jimin', True, 4500, 'Seoul'),
('btsworldtour@gmail.com', 'V', True, 4999, 'Seoul'),
('kiariocar@mail.ru', 'Suga', False, 5500, 'Seoul'),
('runbts@gmail.com', 'Chin', True, 3599, 'Seoul'),
('pickledcabbage@yandex.ru', 'Jhope', True, 3500, 'Seoul');

INSERT INTO employeemanagers (employee, manager) VALUES
('kissulia1997@mail.ru', 'krutoiparen23@mail.ru'),
('olegolegoleg@gmail.com', 'krutoiparen23@mail.ru'),
('vashanatasha@gmail.com', 'krutoiparen23@mail.ru'),
('transformers2007@gmail.com', 'krutoiparen23@mail.ru'),
('krutoiparen23@mail.ru', 'meladze@yandex.ru'),
('babayagaboogeyman@mail.ru', 'meladze@yandex.ru'),
('keypop@mail.ru', 'meladze@yandex.ru'),
('amogus@yandex.ru', 'meladze@yandex.ru'),
('plssaveus@mail.ru', 'meladze@yandex.ru'),
('btsworldtour@gmail.com', 'meladze@yandex.ru'),
('kiariocar@mail.ru', 'meladze@yandex.ru'),
('runbts@gmail.com', 'meladze@yandex.ru'),
('pickledcabbage@yandex.ru', 'meladze@yandex.ru'),
('givemeoscar@gmail.com', 'angelinajolieofficial@mail.ru'),
('thetwilightsaga@yandex.ru', 'angelinajolieofficial@mail.ru'),
('amogus@yandex.ru', 'angelinajolieofficial@mail.ru'),
('angelinajolieofficial@mail.ru', 'bloodyman@gmail.ru'),
('vashanatasha@gmail.com', 'bloodyman@gmail.ru'),
('amogus@yandex.ru', 'keypop@mail.ru'),
('plssaveus@mail.ru', 'keypop@mail.ru'),
('btsworldtour@gmail.com', 'keypop@mail.ru'),
('kiariocar@mail.ru', 'keypop@mail.ru'),
('runbts@gmail.com', 'keypop@mail.ru'),
('pickledcabbage@yandex.ru', 'keypop@mail.ru');