/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2015/7/30 17:26:32                           */
/*==============================================================*/


alter table XTW_COLLEGE
   drop constraint FK_XTW_COLL_REFERENCE_XTW_SCHO;

alter table XTW_DETAIL
   drop constraint FK_XTW_DETA_REFERENCE_XTW_USER;

alter table XTW_DETAIL
   drop constraint FK_XTW_DETA_REFERENCE_XTW_GOOD;

alter table XTW_DETAIL
   drop constraint FK_XTW_DETA_REFERENCE_XTW_KEY_;

alter table XTW_DETAIL
   drop constraint FK_XTW_DETA_REFERENCE_XTW_DETA;

alter table XTW_GOODS
   drop constraint FK_XTW_GOOD_REFERENCE_XTW_TYPE;

alter table XTW_USERS
   drop constraint FK_XTW_USER_REFERENCE_XTW_COLL;

drop table XTW_COLLEGE cascade constraints;

drop table XTW_DETAIL cascade constraints;

drop table XTW_GOODS cascade constraints;

drop table XTW_KEY_WORD cascade constraints;

drop table XTW_SCHOOL cascade constraints;

drop table XTW_TYPE cascade constraints;

drop table XTW_USERS cascade constraints;

/*==============================================================*/
/* Table: XTW_COLLEGE                                           */
/*==============================================================*/
create table XTW_COLLEGE 
(
   collegeId            NUMBER(9)            not null,
   schoolId             NUMBER(9)            not null,
   collegeName          VARCHAR2(30)         not null,
   constraint PK_XTW_COLLEGE primary key (collegeId)
);

/*==============================================================*/
/* Table: XTW_DETAIL                                            */
/*==============================================================*/
create table XTW_DETAIL 
(
   detailId             NUMBER(9)            not null,
   userId               NUMBER(9)            not null,
   dates                date                 not null,
   location             VARCHAR2(50)         not null,
   goodsId              NUMBER(9)            not null,
   detailDescription    VARCHAR2(500)        not null,
   state                NUMBER(1)            not null,
   phoneNumber          VARCHAR2(11),
   keywordId            NUMBER(9)            not null,
   toEventId            NUMBER(9),
   eventName            VARCHAR2(8)          not null,
   constraint PK_XTW_DETAIL primary key (detailId)
);

/*==============================================================*/
/* Table: XTW_GOODS                                             */
/*==============================================================*/
create table XTW_GOODS 
(
   goodsId              NUMBER(9)            not null,
   typeId               NUMBER(9)            not null,
   picture              BLOB,
   brand                VARCHAR2(20),
   cardNumber           VARCHAR2(20),
   ownerName            VARCHAR2(10),
   constraint PK_XTW_GOODS primary key (goodsId)
);

/*==============================================================*/
/* Table: XTW_KEY_WORD                                          */
/*==============================================================*/
create table XTW_KEY_WORD 
(
   keywordId            NUMBER(9)            not null,
   keywordOne           VARCHAR2(12),
   keywordTwo           VARCHAR2(12),
   keywordThree         VARCHAR2(12),
   keywordFour          VARCHAR2(12),
   keywordFive          VARCHAR2(12),
   keywordSix           VARCHAR2(12),
   keywordSeven         VARCHAR2(12),
   keywordEight         VARCHAR2(12),
   keywordNine          VARCHAR2(12),
   keywordTen           VARCHAR2(12),
   constraint PK_XTW_KEY_WORD primary key (keywordId)
);

/*==============================================================*/
/* Table: XTW_SCHOOL                                            */
/*==============================================================*/
create table XTW_SCHOOL 
(
   schoolId             NUMBER(9)            not null,
   schoolName           VARCHAR2(20)         not null,
   constraint PK_XTW_SCHOOL primary key (schoolId),
   constraint AK_SCHOOL_NAME_XTW_SCHO unique (schoolName)
);

/*==============================================================*/
/* Table: XTW_TYPE                                              */
/*==============================================================*/
create table XTW_TYPE 
(
   typeId               NUMBER(9)            not null,
   typeName             VARCHAR2(20)         not null,
   constraint PK_XTW_TYPE primary key (typeId)
);

/*==============================================================*/
/* Table: XTW_USERS                                             */
/*==============================================================*/
create table XTW_USERS 
(
   userId               NUMBER(9)            not null,
   accountNumber        varchar2(15)         not null,
   stuNumber            varchar2(15)         not null,
   password             varchar2(32)         not null,
   userName             varchar2(10)         not null,
   phoneNumber          varchar2(12)         not null,
   qqNumber             varchar2(15),
   email                varchar2(40),
   collegeId            NUMBER(9)            not null,
   constraint PK_XTW_USERS primary key (userId),
   constraint AK_ACCOUNT_NUMBER_XTW_USER unique (accountNumber),
   constraint AK_PHONE_NUMBER_XTW_USER unique (phoneNumber)
);

alter table XTW_COLLEGE
   add constraint FK_XTW_COLL_REFERENCE_XTW_SCHO foreign key (schoolId)
      references XTW_SCHOOL (schoolId);

alter table XTW_DETAIL
   add constraint FK_XTW_DETA_REFERENCE_XTW_USER foreign key (userId)
      references XTW_USERS (userId);

alter table XTW_DETAIL
   add constraint FK_XTW_DETA_REFERENCE_XTW_GOOD foreign key (goodsId)
      references XTW_GOODS (goodsId);

alter table XTW_DETAIL
   add constraint FK_XTW_DETA_REFERENCE_XTW_KEY_ foreign key (keywordId)
      references XTW_KEY_WORD (keywordId);

alter table XTW_DETAIL
   add constraint FK_XTW_DETA_REFERENCE_XTW_DETA foreign key (toEventId)
      references XTW_DETAIL (detailId);

alter table XTW_GOODS
   add constraint FK_XTW_GOOD_REFERENCE_XTW_TYPE foreign key (typeId)
      references XTW_TYPE (typeId);

alter table XTW_USERS
   add constraint FK_XTW_USER_REFERENCE_XTW_COLL foreign key (collegeId)
      references XTW_COLLEGE (collegeId);

