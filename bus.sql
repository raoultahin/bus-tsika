/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     01/03/2017 13:32:02                          */
/*==============================================================*/

/*
drop index BILLLETS_BUS_FK;

drop index BILLETS_PK;

drop table BILLETS;

drop index PROPRIETAURE_BUS_FK;

drop index BUS_PK;

drop table BUS;

drop index BUS_PERSONNEL_FK;

drop index PERSONNEL_PK;

drop table PERSONNEL;

drop index POINTAGE_BUS_FK;

drop index POINTAGE_PK;

drop table POINTAGE;

drop index PROPRIETAIRE_PK;

drop table PROPRIETAIRE;

drop index UTILISATEURS_PK;

drop table UTILISATEURS;
fff
*/

/*==============================================================*/
/* Table: BILLETS                                               */
/*==============================================================*/
create table BILLETS (
   IDBILLET             SERIAL               not null,
   IDBUS                INT4                 not null,
   NUMDEBUT             INT4                 null,
   NUMFIN               INT4                 null,
   constraint PK_BILLETS primary key (IDBILLET)
);

/*==============================================================*/
/* Index: BILLETS_PK                                            */
/*==============================================================*/
create unique index BILLETS_PK on BILLETS (
IDBILLET
);

/*==============================================================*/
/* Index: BILLLETS_BUS_FK                                       */
/*==============================================================*/
create  index BILLLETS_BUS_FK on BILLETS (
IDBUS
);

/*==============================================================*/
/* Table: BUS                                                   */
/*==============================================================*/
create table BUS (
   IDBUS                SERIAL               not null,
   IDPROPRIETAIRE       INT4                 not null,
   NOM                  VARCHAR(50)          null,
   MATRICULE            VARCHAR(10)          null,
   NBRPLACE             INT2                 null,
   constraint PK_BUS primary key (IDBUS)
);

/*==============================================================*/
/* Index: BUS_PK                                                */
/*==============================================================*/
create unique index BUS_PK on BUS (
IDBUS
);

/*==============================================================*/
/* Index: PROPRIETAURE_BUS_FK                                   */
/*==============================================================*/
create  index PROPRIETAURE_BUS_FK on BUS (
IDPROPRIETAIRE
);

/*==============================================================*/
/* Table: PERSONNEL                                             */
/*==============================================================*/
create table PERSONNEL (
   IDPERSONNEL          SERIAL               not null,
   IDBUS                INT4                 not null,
   NOM                  VARCHAR(50)          null,
   PRENOM               VARCHAR(50)          null,
   DATENAISSANCE        DATE                 null,
   SEXE                 CHAR(1)              null,
   ADRESSE              VARCHAR(50)          null,
   TEL                  VARCHAR(20)          null,
   POSTE                VARCHAR(50)          null,
   constraint PK_PERSONNEL primary key (IDPERSONNEL)
);

/*==============================================================*/
/* Index: PERSONNEL_PK                                          */
/*==============================================================*/
create unique index PERSONNEL_PK on PERSONNEL (
IDPERSONNEL
);

/*==============================================================*/
/* Index: BUS_PERSONNEL_FK                                      */
/*==============================================================*/
create  index BUS_PERSONNEL_FK on PERSONNEL (
IDBUS
);

/*==============================================================*/
/* Table: POINTAGE                                              */
/*==============================================================*/
create table POINTAGE (
   IDPOINTAGE           SERIAL               not null,
   IDBUS                INT4                 not null,
   DATEHEURE            DATE                 null,
   TYPE                 CHAR(1)              null,
   NUMBILLET            INT4                 null,
   constraint PK_POINTAGE primary key (IDPOINTAGE)
);

/*==============================================================*/
/* Index: POINTAGE_PK                                           */
/*==============================================================*/
create unique index POINTAGE_PK on POINTAGE (
IDPOINTAGE
);

/*==============================================================*/
/* Index: POINTAGE_BUS_FK                                       */
/*==============================================================*/
create  index POINTAGE_BUS_FK on POINTAGE (
IDBUS
);

/*==============================================================*/
/* Table: PROPRIETAIRE                                          */
/*==============================================================*/
create table PROPRIETAIRE (
   IDPROPRIETAIRE       SERIAL               not null,
   NOM                  VARCHAR(50)          null,
   PRENOM               VARCHAR(50)          null,
   SEXE                 CHAR(1)              null,
   ADRESSE              VARCHAR(50)          null,
   TEL                  VARCHAR(20)          null,
   constraint PK_PROPRIETAIRE primary key (IDPROPRIETAIRE)
);

/*==============================================================*/
/* Index: PROPRIETAIRE_PK                                       */
/*==============================================================*/
create unique index PROPRIETAIRE_PK on PROPRIETAIRE (
IDPROPRIETAIRE
);

/*==============================================================*/
/* Table: UTILISATEURS                                          */
/*==============================================================*/
create table UTILISATEURS (
   IDUTILISATEUR        SERIAL               not null,
   NOM                  VARCHAR(50)          null,
   PRENOM               VARCHAR(50)          null,
   PSEUDO               VARCHAR(25)          null,
   MDP                  VARCHAR(20)          null,
   constraint PK_UTILISATEURS primary key (IDUTILISATEUR)
);

/*==============================================================*/
/* Index: UTILISATEURS_PK                                       */
/*==============================================================*/
create unique index UTILISATEURS_PK on UTILISATEURS (
IDUTILISATEUR
);

alter table BILLETS
   add constraint FK_BILLETS_BILLLETS__BUS foreign key (IDBUS)
      references BUS (IDBUS)
      on delete restrict on update restrict;

alter table BUS
   add constraint FK_BUS_PROPRIETA_PROPRIET foreign key (IDPROPRIETAIRE)
      references PROPRIETAIRE (IDPROPRIETAIRE)
      on delete restrict on update restrict;

alter table PERSONNEL
   add constraint FK_PERSONNE_BUS_PERSO_BUS foreign key (IDBUS)
      references BUS (IDBUS)
      on delete restrict on update restrict;

alter table POINTAGE
   add constraint FK_POINTAGE_POINTAGE__BUS foreign key (IDBUS)
      references BUS (IDBUS)
      on delete restrict on update restrict;

