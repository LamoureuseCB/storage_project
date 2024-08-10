create table category
(
    id   serial primary key,
    name varchar(144) not null
);
create table product
(
    id           serial primary key,
    name         varchar(144) not null,
    category_id  int references category (id),
    manufacturer varchar(144) not null
);

create table option
(
    id          serial primary key,
    name        varchar(144) not null,
    category_id int references category (id)
);

create table value
(
    id         serial primary key,
    name       varchar(144) not null,
    product_id int references product (id),
    option_id  int references option (id)
);

insert into category (name)
values ('Процессоры'),
       ('Мониторы');

insert into product (name, category_id, manufacturer)
values ('Intel Core I9 9900', 1, 'Intel'),
       ('AMD Ryzen R7 7700', 1, 'AMD'),
       ('Samsung SU556270', 2, 'Samsung'),
       ('AOC Z215S659', 2, 'AOC');

insert into option(name, category_id)
values ('Количество ядер', 1),
       ('Сокет', 1),
       ('Диагональ', 2),
       ('Матрица', 2),
       ('Разрешение', 2);

insert into value(name, option_id, product_id)
values ('8', 1, 1),
       ('1250', 2, 1),
       ('12', 1, 2),
       ('AM4', 2, 2),
       ('27', 3, 3),
       ('TN', 4, 3),
       ('2560*1440', 5, 3),
       ('21.5', 3, 4),
       ('AH-IPS', 4, 4),
       ('1920*1080', 5, 4);


