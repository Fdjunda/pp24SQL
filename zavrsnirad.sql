drop database if exists zavrsnirad;
create database zavrsnirad;
#ime app pri kraju rada
use zavrsnirad --default_character_set=utf8;

create table kupci(
    id int
    ime varchar(50)
    prezime varchar(50),    
    email varchar(50),
    kontakt_broj varchar(30),
    adresa varchar(60),
    pbroj char(5),
    mjesto varchar(50)
    );

    create table dostavljaci(
    id int
    naziv varchar(50),
    kontakt_broj varchar(30),
    mjesto varchar(50)
    );

    create table trgovine(
    id int 
    naziv varchar(50),
    email varchar(50),
    kontakt_broj varchar(50),
    adresa varchar(50),
    pbroj char(5),
    mjesto varchar(50)
    );

    create table nacin_placanja(
        id int,
        naziv varchar(50)
    );

    create table artikli(
    id int
    naziv varchar(50),
    opis text,
    cijena decimal(18,2)
    );
        
    create table narudzbe(
    id int,
    kupac_id int,
    trgovina_id int,
    dostavljac_id int,
    nacin_placanja_id int,
    ukupan_iznos decimal(18,2),
    placeno boolean);

    create table (narudzbe_artikli
    id int,
    narudzba_id int,
    artikli_id int,
    cijena decimal(18,2),
    kolicina varchar(1000)
    );


    ALTER TABLE narudzbe ADD FOREIGN KEY (kupac_id) REFERENCES kupac(id);
    ALTER TABLE narudzbe ADD FOREIGN KEY (trgovina_id) REFERENCES trgovina(trgovina_id);
    ALTER TABLE narudzbe ADD FOREIGN KEY (dostavljac_id) REFERENCES dostavljac(id);
    ALTER TABLE narudzbe ADD FOREIGN KEY (nacin_placanja_id) REFERENCES nacin_placanja(id);
    ALTER TABLE narudzbe_artikli ADD FOREIGN KEY (narudzba_id) REFERENCES narudzbe(id);
    ALTER TABLE narudzbe_artikli ADD FOREIGN KEY (artikli_id) REFERENCES artikli(id);


    


    