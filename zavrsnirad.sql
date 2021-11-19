drop database if exists zavrsnirad;
create database zavrsnirad;
#ime app pri kraju rada
use zavrsnirad --default_character_set=utf8;

create table kupac(
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar(20),
    artikl varchar(50),
    mjesto varchar(50),
    ulica varchar(100),
    kucni_broj varchar(7),
    trgovina varchar(20),
    artikl varchar(50));

    create table dostavljac(
        sifra int not null primary key auto_increment,
        ime varchar(20),
        kontakt varchar(20)
    );

    create table trgovina(
        sifra int not null primary key auto_increment,
        ime varchar(50),
        mjesto varchar(100),
        ulica varchar(100),
        kucni_broj varchar(7),
0       artikl varchar(50)
    );
        
    create table narudzba(
        sifra int not null primary key auto_increment,
        naziv varchar(100) not null,
        kolicina varchar(1000),
        cijena decimal(18,2),
        artikl varchar(100));

    create table artikl(
        narudzba int not null,
        kupac int not null,
        trgovina int not null,
        dostavljac int not null
    );




    alter table narudzba add foreign key (artikl) references kupac(sifra);
    alter table narudzba add foreign key (artikl) references dobavljac(sifra);



    