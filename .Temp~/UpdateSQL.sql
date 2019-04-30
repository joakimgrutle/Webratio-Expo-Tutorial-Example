-- Group [Group]
create table "APP"."GROUP" (
   "OID"  integer  not null,
   "GROUPNAME"  varchar(255),
  primary key ("OID")
);


-- Module [Module]
create table "APP"."MODULE" (
   "OID"  integer  not null,
   "MODULEID"  varchar(255),
   "MODULENAME"  varchar(255),
  primary key ("OID")
);


-- User [User]
create table "APP"."USER" (
   "OID"  integer  not null,
   "USERNAME"  varchar(255),
   "PASSWORD"  varchar(255),
   "EMAIL"  varchar(255),
  primary key ("OID")
);


-- Exhibit [ent1]
create table "APP"."EXHIBIT" (
   "OID"  integer  not null,
   "NAME"  varchar(255),
  primary key ("OID")
);


-- Vote [ent2]
create table "APP"."VOTE" (
   "OID"  integer  not null,
   "SCORE"  double,
   "USERID"  integer,
  primary key ("OID")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "APP"."GROUP"  add column  "MODULE_OID"  integer;
alter table "APP"."GROUP"   add constraint FK_GROUP_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");


-- Group_Module [Group2Module_Module2Group]
create table "APP"."GROUP_MODULE" (
   "GROUP_OID"  integer not null,
   "MODULE_OID"  integer not null,
  primary key ("GROUP_OID", "MODULE_OID")
);
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "APP"."USER"  add column  "GROUP_OID"  integer;
alter table "APP"."USER"   add constraint FK_USER_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");


-- User_Group [User2Group_Group2User]
create table "APP"."USER_GROUP" (
   "USER_OID"  integer not null,
   "GROUP_OID"  integer not null,
  primary key ("USER_OID", "GROUP_OID")
);
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_USER foreign key ("USER_OID") references "APP"."USER" ("OID");
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");


-- Vote_Exhibit [rel2]
create table "APP"."VOTE_EXHIBIT" (
   "VOTE_OID"  integer not null,
   "EXHIBIT_OID"  integer not null,
  primary key ("VOTE_OID", "EXHIBIT_OID")
);
alter table "APP"."VOTE_EXHIBIT"   add constraint FK_VOTE_EXHIBIT_VOTE foreign key ("VOTE_OID") references "APP"."VOTE" ("OID");
alter table "APP"."VOTE_EXHIBIT"   add constraint FK_VOTE_EXHIBIT_EXHIBIT foreign key ("EXHIBIT_OID") references "APP"."EXHIBIT" ("OID");


-- User_Exhibit [rel3]
create table "APP"."USER_EXHIBIT" (
   "USER_OID"  integer not null,
   "EXHIBIT_OID"  integer not null,
  primary key ("USER_OID", "EXHIBIT_OID")
);
alter table "APP"."USER_EXHIBIT"   add constraint FK_USER_EXHIBIT_USER foreign key ("USER_OID") references "APP"."USER" ("OID");
alter table "APP"."USER_EXHIBIT"   add constraint FK_USER_EXHIBIT_EXHIBIT foreign key ("EXHIBIT_OID") references "APP"."EXHIBIT" ("OID");


