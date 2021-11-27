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
    jedinicna_mjera varchar(5) not null,
    opis varchar(225) not null,
    cijena decimal(18,2) not null
    );
        
    create table narudzbe(
    id int not null primary key auto_increment,
    kupci_id int,
    nacin_placanja varchar(50),
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
    


    insert into artikli(id,naziv,jedinicna_mjera,opis,cijena) values
    (null,'Joystick','kom','kontroler za ps4',399.99),
    (null,'Ps+','kom','pretplata za online igranje',438.00),
    (null,'Playstation 4','kom','igrajuča konzola',2899.89),
    (null,'Lan kabal','m','kabal za spajanje',2.89),
    (null,'VR head set','kom','vr ps4 virtualna stvarnost + 4 igrice',2892.00),
    (null,'Coca cola','kom','bezalkoholno gazirano piće',12.99),
    (null,'Jabuka zlatni delišes','kg','voće',8.99),
    (null,'Mirisna svijeća','kom','razni mirisi i boje',25.00),
    (null,'Mlijeko','kom','svježe mlijeko 1l',8.99);


    insert into kupci(id,ime,prezime,email,kontakt_broj,adresa,pbroj,mjesto) values
    (null,'Tomislav','Sabolić',null,null,'Osječka 28a', 31221,'Josipovac'),
    (null,'Kristijan','Hegeduš',null,null,'Bizovačka 38',31221,'Josipovac'),
    (null,'Matej','Papac',null,null,'Stradun 99', 20000,'Dubrovnik'),
    (null,'Mladen','Božić',null,null,'Alojzja Stepinca 876', 53231,'Plitvička Jezera'),
    (null,'Josip','Ervačić',null,null,'Ivana Gundulića 76', 31000,'Osijek'),
    (null,'Grgo','Kvesić',null,null,'Vijenac Petrove Gore 3', 31000,'Osijek'),
    (null,'Dušan','Strajinić',null,null,'Europske avenije 998', 10000,'Zagreb'),
    (null,'Filip','Đunda',null,null,'Trh Hrvatskih branitelja 16', 31214,'Laslovo');

   
    
    

    


    

   



    
