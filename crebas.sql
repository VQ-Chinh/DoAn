/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     3/13/2017 6:10:03 PM                         */
/*==============================================================*/

Create database TracNghiem
go
use TracNghiem
go


/*==============================================================*/
/* Table: BINHLUANCAUHOI                                        */
/*==============================================================*/
create table BINHLUANCAUHOI 
(
   MACAUHOI             char(256)                      not null,
   MAGIAOVIEN           char(256)                      not null,
   NOIDUNG              char(256)                      null,
   THOIGIAN             timestamp                      null
);

alter table BINHLUANCAUHOI
   add constraint PK_BINHLUANCAUHOI primary key clustered (MACAUHOI, MAGIAOVIEN);

/*==============================================================*/
/* Table: BOMON                                                 */
/*==============================================================*/
create table BOMON 
(
   MABOMON              char(256)                      not null,
   MAGIAOVIEN           char(256)                      not null,
   GIA_MAGIAOVIEN       char(256)                      not null,
   TENBOMON             char(256)                      null,
   KHOA                 char(256)                      null
);

alter table BOMON
   add constraint PK_BOMON primary key (MABOMON);

/*==============================================================*/
/* Table: CAUHOI                                                */
/*==============================================================*/
create table CAUHOI 
(
   MACAUHOI             char(256)                      not null,
   NOIDUNG              char(256)                      null,
   CAU1                 char(256)                      null,
   CAU2                 char(256)                      null,
   CAU3                 char(256)                      null,
   CAU4                 char(256)                      null,
   DAPAN                integer                        null,
   DOKHO                integer                        null
);

alter table CAUHOI
   add constraint PK_CAUHOI primary key (MACAUHOI);

/*==============================================================*/
/* Table: CHITIETDETHI                                          */
/*==============================================================*/
create table CHITIETDETHI 
(
   MADETHI              char(256)                      not null,
   MACAUHOI             char(256)                      not null
);

alter table CHITIETDETHI
   add constraint PK_CHITIETDETHI primary key clustered (MADETHI, MACAUHOI);

/*==============================================================*/
/* Table: CHITIETHOCPHAN                                        */
/*==============================================================*/
create table CHITIETHOCPHAN 
(
   MAHOCPHAN            char(256)                      not null,
   MAGIAOVIEN           char(256)                      not null
);

alter table CHITIETHOCPHAN
   add constraint PK_CHITIETHOCPHAN primary key clustered (MAHOCPHAN, MAGIAOVIEN);

/*==============================================================*/
/* Table: DETHI                                                 */
/*==============================================================*/
create table DETHI 
(
   MADETHI              char(256)                      not null,
   MAHOCPHAN            char(256)                      not null,
   THOIGIANTHI          timestamp                      null,
   DOKHOTRUNGBINH       integer                        null
);

alter table DETHI
   add constraint PK_DETHI primary key (MADETHI);

/*==============================================================*/
/* Table: GIAOVIEN                                              */
/*==============================================================*/
create table GIAOVIEN 
(
   MAGIAOVIEN           char(256)                      not null,
   TENGIAOVIEN          char(256)                      null,
   NGAYSINH             date                           null,
   HOCVI                char(256)                      null,
   PASSWORD              char(256)                      null,
   LOAIGIAOVIEN         char(256)                      null
);

alter table GIAOVIEN
   add constraint PK_GIAOVIEN primary key (MAGIAOVIEN);

/*==============================================================*/
/* Table: HOCPHAN                                               */
/*==============================================================*/
create table HOCPHAN 
(
   MAHOCPHAN            char(256)                      not null,
   GVQUANLYHOCPHAN      char(256)                      null,
   MABOMON              char(256)                      not null,
   TENHOCPHAN           char(256)                      null,
   SOTINCHI             integer                        null,
   THOIGIAN             timestamp                      null
);

alter table HOCPHAN
   add constraint PK_HOCPHAN primary key (MAHOCPHAN);

/*==============================================================*/
/* Table: THAYDOICAUHOI                                         */
/*==============================================================*/
create table THAYDOICAUHOI 
(
   MACAUHOI             char(256)                      not null,
   MAGIAOVIEN           char(256)                      not null,
   THOIGIAN             timestamp                      null
);

alter table THAYDOICAUHOI
   add constraint PK_THAYDOICAUHOI primary key clustered (MACAUHOI, MAGIAOVIEN);

/*==============================================================*/
/* Table: THUOCBOMON                                            */
/*==============================================================*/
create table THUOCBOMON 
(
   MABOMON              char(256)                      not null,
   MAGIAOVIEN           char(256)                      not null
);

alter table THUOCBOMON
   add constraint PK_THUOCBOMON primary key clustered (MABOMON, MAGIAOVIEN);

INSERT INTO GIAOVIEN  VALUES ('admin','admin','12/11/1999','Tài khoản admin','111111','BinhThuong');
INSERT INTO GIAOVIEN  VALUES ('02','b','6/15/1999','a','1','BinhThuong');

select * from GIAOVIEN

select MAGIAOVIEN, PASSWORD 
from GIAOVIEN
where MAGIAOVIEN='admin' and PASSWORD='test'