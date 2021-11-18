drop database if exists zavrsnirad;
create database zavrsnirad;
#ime app pri kraju rada
use zavrsnirad;

create table kupac(
    sifra int not null primary key auto_increment,
    ime varchar(20) not null,
    prezime varchar(20) not null)
    artikl varchar(50)
    cijena decimal (18,2);

    create table dostavljac(
        sifra int not null primary key auto_increment,
        ime varchar(20),
        preizme varchar(20),
        lokacija varchar(50)
        vrijeme dostave datetime
    );

    create table mjesto(
        
    )
    
