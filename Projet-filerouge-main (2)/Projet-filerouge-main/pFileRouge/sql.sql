drop table if exists Association_1;

drop table if exists Association_4;

drop table if exists Competences;

drop table if exists Freelancers;

drop table if exists Projets_profss;

drop table if exists Publication;

drop table if exists Reviews;

drop table if exists categories;

drop table if exists client;

/*==============================================================*/
/* Table : Association_1                                        */
/*==============================================================*/
create table Association_1
(
   idFreelancer         int not null,
   id_comp              int not null,
   primary key (idFreelancer, id_comp)
);

/*==============================================================*/
/* Table : Association_4                                        */
/*==============================================================*/
create table Association_4
(
   idFreelancer         int not null,
   id_categor           int not null,
   primary key (idFreelancer, id_categor)
);

/*==============================================================*/
/* Table : Competences                                          */
/*==============================================================*/
create table Competences
(
   id_comp              int not null,
   nomCompetence        varchar(254),
   primary key (id_comp)
);

/*==============================================================*/
/* Table : Freelancers                                          */
/*==============================================================*/
create table Freelancers
(
   idFreelancer         int not null,
   nom                  varchar(254),
   prenom               varchar(254),
   date                 datetime,
   telnumber            varchar(254),
   email                varchar(254),
   desription           varchar(254),
   image                varchar(254),
   primary key (idFreelancer),
   key AK_Identifiant_2 (idFreelancer)
);

/*==============================================================*/
/* Table : Projets_profss                                       */
/*==============================================================*/
create table Projets_profss
(
   numProj              int not null,
   idFreelancer         int not null,
   titre                varchar(254),
   description          varchar(254),
   urlProjet            varchar(254),
   primary key (numProj)
);

/*==============================================================*/
/* Table : Publication                                          */
/*==============================================================*/
create table Publication
(
   id_post              int not null,
   idclient             int not null,
   id_categor           int not null,
   nomPost              varchar(254),
   primary key (id_post),
   key AK_Identifiant_1 (id_post)
);

/*==============================================================*/
/* Table : Reviews                                              */
/*==============================================================*/
create table Reviews
(
   idFreelancer         int not null,
   idclient             int not null,
   numReview            int not null,
   notes                int,
   commentaire          varchar(254),
   primary key (idFreelancer, idclient, numReview)
);

/*==============================================================*/
/* Table : categories                                           */
/*==============================================================*/
create table categories
(
   id_categor           int not null,
   nom                  varchar(254),
   primary key (id_categor)
);

/*==============================================================*/
/* Table : client                                               */
/*==============================================================*/
create table client
(
   idclient             int not null,
   nom                  varchar(254),
   prenom               varchar(254),
   numtel               varchar(254),
   email                varchar(254),
   dateinscription      datetime,
   primary key (idclient)
);

alter table Association_1 add constraint FK_Association_1 foreign key (id_comp)
      references Competences (id_comp) on delete restrict on update restrict;

alter table Association_1 add constraint FK_Association_1 foreign key (idFreelancer)
      references Freelancers (idFreelancer) on delete restrict on update restrict;

alter table Association_4 add constraint FK_Association_4 foreign key (idFreelancer)
      references Freelancers (idFreelancer) on delete restrict on update restrict;

alter table Association_4 add constraint FK_Association_4 foreign key (id_categor)
      references categories (id_categor) on delete restrict on update restrict;

alter table Projets_profss add constraint FK_Association_2 foreign key (idFreelancer)
      references Freelancers (idFreelancer) on delete restrict on update restrict;

alter table Publication add constraint FK_Association_5 foreign key (id_categor)
      references categories (id_categor) on delete restrict on update restrict;

alter table Publication add constraint FK_Association_6 foreign key (idclient)
      references client (idclient) on delete restrict on update restrict;

alter table Reviews add constraint FK_Association_3 foreign key (idFreelancer)
      references Freelancers (idFreelancer) on delete restrict on update restrict;

alter table Reviews add constraint FK_Association_3 foreign key (idclient)
      references client (idclient) on delete restrict on update restrict;
