drop database if exists zavrsnirad2;
create database zavrsnirad2;
#ime app "lol"
use zavrsnirad2 --default_character_set=utf8;

create table lol(
    champion varchar(20),
    mode varchar(30),
    runes text,
    price list decimal(18,2)
);

create table champion(
    number int,
    name varchar(20),
    skin varchar(20),
    abiliti varchar(20),
    price decimal(18,20)
);

