drop database if exists zavrsnirad;
create database zavrsnirad;
#ime app pri kraju rada
use zavrsnirad --default_character_set=utf8;

    create table kupac(
    id int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,    
    email varchar(50),
    kontakt_broj varchar(30),
    adresa varchar(60) not null,
    pbroj char(5) not null,
    mjesto varchar(50) not null
    );

    create table dostavljaci(
    id int not null primary key auto_increment,
    naziv varchar(50) not null,
    kontakt_broj varchar(30) not null,
    mjesto varchar(50) not null
    );

    create table trgovine(
    id int not null primary key auto_increment,
    naziv varchar(50) not null,
    email varchar(50) not null,
    kontakt_broj varchar(50) not null,
    adresa varchar(50) not null,
    pbroj char(5) not null,
    mjesto varchar(50) not null
    );

    create table nacin_placanja(
    id int not null primary key auto_increment,
    naziv varchar(50) not null
    );

    create table artikli(
    id int not null primary key auto_increment,
    naziv varchar(50) not null,
    opis text not null,
    cijena decimal(18,2) not null
    );
        
    create table narudzbe(
    id int not null primary key auto_increment,
    kupac_id int,
    trgovina_id int,
    dostavljac_id int,
    nacin_placanja_id int,
    ukupan_iznos decimal(18,2),
    placeno boolean);

    create table narudzbe_artikli(
    id int not null primary key auto_increment,
    narudzba_id int,
    artikli_id int,
    cijena decimal(18,2),
    kolicina varchar(1000)
    );


    ALTER TABLE narudzbe ADD FOREIGN KEY (kupac_id) REFERENCES kupac(id);
    ALTER TABLE narudzbe ADD FOREIGN KEY (trgovina_id) REFERENCES trgovine(id);
    ALTER TABLE narudzbe ADD FOREIGN KEY (nacin_placanja_id) REFERENCES nacin_placanja(id);
    ALTER TABLE narudzbe ADD FOREIGN KEY (dostavljac_id) REFERENCES dostavljaci(id); 
    ALTER TABLE narudzbe_artikli ADD FOREIGN KEY (narudzba_id) REFERENCES narudzbe(id);
    ALTER TABLE narudzbe_artikli ADD FOREIGN KEY (artikli_id) REFERENCES artikli(id);
    

    select * from kupac;

    insert into kupac(ime,prezime,adresa,pbroj,mjesto) values('filip','đunda','vijenac dinare',31000,'osijek');


    select * from trgovine;

    insert into trgovine(naziv,email,kontakt_broj,adresa,pbroj,mjesto) 
    values('interspar','interspar.os@gmail.com',031300500,'svilajska',31000,'osijek');


    select * from nacin_placanja;

    insert into nacin_placanja(naziv)
    values('gotovinsko');


    select * from artikli;

    insert into artikli(naziv,opis,cijena)
    values('coca cola','gazirani napitak',12.99);


    select * from dostavljaci;

    insert into dostavljaci(naziv,kontakt_broj,mjesto)
    values('glovo',0987654321,'osijek');


    select * from narudzbe;

    insert into narudzbe(ukupan_iznos,placeno)
    values(12.99,1)


