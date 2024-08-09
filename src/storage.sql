create database "catalog";
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

create table product_characteristics
(
    id                    serial primary key,
    product_id            int references product (id),
    characteristics_name  varchar(144) not null,
    characteristics_value varchar(144) not null


);

insert into category (name)
values ('Процессоры'),
       ('Мониторы');

insert into product (name, category_id, manufacturer)
values ('Intel Core I9 9900', 1, 'Intel'),
       ('AMD Ryzen R7 7700', 1, 'AMD'),
       ('Samsung SU556270', 2, 'Samsung'),
       ('AOC Z215S659', 2, 'AOC');

insert into product_characteristics(product_id, characteristics_name, characteristics_value)
values (1, 'Количество ядер', '8'),
       (2, 'Количество ядер', '12'),
       (1, 'Сокет', '1250'),
       (2, 'Сокет', 'AM4'),
       (3, 'Диагональ', '27'),
       (4, 'Диагональ', '21.5'),
       (3, 'Матрица', 'TN'),
       (4, 'Матрица', 'AH-IPS'),
       (3, 'Разрешение', '2560*1440'),
       (4, 'Разрешение', '1920*1080');







