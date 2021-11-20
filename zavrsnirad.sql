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
        id int not null primary key auto_increment,,
        naziv varchar(50) not null
    );

    create table artikli(
    id int not null primary key auto_increment,
    naziv varchar(50) not null,
    opis text not null,
    cijena decimal(18,2) not null
    );
        
    create table narudzbe(
    id int not null primary key auto_increment,,
    kupac_id int not null primary key auto_increment,,
    trgovina_id int not null primary key auto_increment,,
    dostavljac_id int not null primary key auto_increment,,
    nacin_placanja_id int not null primary key auto_increment,,
    ukupan_iznos decimal(18,2),
    placeno boolean);

    create table narudzbe_artikli(
    id int not null primary key auto_increment,,
    narudzba_id int not null primary key auto_increment,,
    artikli_id int not null primary key auto_increment,,
    cijena decimal(18,2),
    kolicina varchar(1000)
    );


    ALTER TABLE narudzbe ADD FOREIGN KEY (kupac_id) REFERENCES kupac(id);
    ALTER TABLE narudzbe ADD FOREIGN KEY (trgovina_id) REFERENCES trgovina(trgovina_id);
    ALTER TABLE narudzbe ADD FOREIGN KEY (dostavljac_id) REFERENCES dostavljac(id);
    ALTER TABLE narudzbe ADD FOREIGN KEY (nacin_placanja_id) REFERENCES nacin_placanja(id);
    ALTER TABLE narudzbe_artikli ADD FOREIGN KEY (narudzba_id) REFERENCES narudzbe(id);
    ALTER TABLE narudzbe_artikli ADD FOREIGN KEY (artikli_id) REFERENCES artikli(id);


    


    