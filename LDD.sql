-- ***Question 1***
--table CANDIDATS
create table CANDIDATS(
    
    CIN_candidat number(5) primary key,
    NomCandidat varchar(15) ,
    PrenomCandidat varchar(15) ,
    DateN date,
    Niveau varchar(15),
    Nationnalite varchar(15));
    
       
       
​--table FORMATIONS
 ​create table FORMATIONS(
    NomFormation varchar(50) primary key,
    Description varchar(50),
    Duree number(5) ,
    Prix decimal(5,2));
	
--table SESSIONS

CREATE TABLE SESSIONS
    (
        IdSession   varchar(30) primary key,
        DateDebutSession date,
        NomFormateur varchar(50),
        NomFormation varchar(50) constraint FORMATION_FK references FORMATIONS
    );


--TABLE PARTICIPATIONS
create table PARTICIPATIONS(
    idCandidat number(5) constraint CANDIDAT_FK references CANDIDATS ,
    idSession  varchar(30) constraint SESSION_FK references SESSIONS ,
    primary key(idCandidat,idSession));


-- ***Question 2***

alter table SESSIONS add  Lieu varchar(15) DEFAULT "ORADIST";

-- ***Question3 ***
--a
ALTER TABLE FORMATIONS MODIFY Duree NOT NULL , Prix NOT NULL;

--b
ALTER TABLE FORMATIONS ADD CONSTRAINT Description_unique UNIQUE(Description);

--c
ALTER TABLE FORMATIONS ADD CONSTRAINT Check_niveau CHECK (Niveau in ("BAC+2" ,"BAC+3","BAC+4","BAC+5"));

--d

ALTER TABLE FORMATIONS ADD CONSTRAINT Check_duree CHECK (Duree BETWEEN 2 and 90);


-- ***Question 4***

DROP TABLE FORMATIONS CASCADE CONSTRAINTS;

DROP TABLE PARTICIPATIONS CASCADE CONSTRAINTS;
DROP TABLE SESSIONS CASCADE CONSTRAINTS;
DROP TABLE CANDIDATS CASCADE CONSTRAINTS;










​
​
