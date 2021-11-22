drop database if exists zavrsnirad;
create database zavrsnirad;
#ime app pri kraju rada
use zavrsnirad --default_character_set=utf8;

    create table kupci(
    id int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,    
    email varchar(50),
    kontakt_broj varchar(30),
    adresa varchar(60) not null,
    pbroj char(5) not null,
    mjesto varchar(50) not null
    );

    create table artikli(
    id int not null primary key auto_increment,
    naziv varchar(50) not null,
    opis text not null,
    cijena decimal(18,2) not null
    );
        
    create table narudzbe(
    id int not null primary key auto_increment,
    kupci_id int,
    ukupan_iznos decimal(18,2),
    placeno boolean);

    create table narudzbe_artikli(
    id int not null primary key auto_increment,
    narudzba_id int,
    artikli_id int,
    cijena decimal(18,2),
    kolicina varchar(1000)
    );


    ALTER TABLE narudzbe ADD FOREIGN KEY (kupci_id) REFERENCES kupci(id);
    ALTER TABLE narudzbe_artikli ADD FOREIGN KEY (narudzba_id) REFERENCES narudzbe(id);
    ALTER TABLE narudzbe_artikli ADD FOREIGN KEY (artikli_id) REFERENCES artikli(id);
    
    

    select * from kupci;

    insert into kupci(ime,prezime,adresa,pbroj,mjesto) 
    values('filip','đunda','vijenac dinare',31000,'osijek');



    select * from artikli;

    insert into artikli(naziv,opis,cijena)
    values('coca cola','gazirani napitak',12.99);


    select * from narudzbe;

    insert into narudzbe(ukupan_iznos,placeno)
    values(12.99,1)


