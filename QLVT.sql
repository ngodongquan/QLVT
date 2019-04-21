
create database QLVT 
use QLVT

create table LoaiTau(
   MaLT varchar(20) primary key,
   TenLT varchar(10) ,
   DeleteFlag bit DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

create table LoaiGhe(
   MaLG varchar(20) primary key,
   TenLG varchar(10),
   SL int,
   DeleteFlag bit DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

create table Tau(
   MaTau varchar(20) primary key,
   MaLG varchar(20),
   MaLT varchar(20),
   DeleteFlag bit DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

create table Ga(
   MaGa varchar(20) primary key,
   TenGa varchar(10),
   LoaiGa varchar(10),
   DeleteFlag bit DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

create table LichTau(
   MaLT varchar(20) primary key,
   MaTau varchar(20),
   GaDi varchar(10),
   GaDen varchar(10),
   NgayDi DateTime,
   ThoiGianDi DateTime,
   GaTrungGian varchar(10),
   GiaVe float,
   DeleteFlag bit DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

create table ChiTietLichTau(
   MaCT varchar(20) primary key,
   MaGa varchar(20),
   MaLT varchar(20),
   ThoiGianDung datetime,
   GhiChu varchar(50),
   DeleteFlag bit DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

create table VeTau(
   MaVeTau varchar(20) primary key,
   MaLT varchar(20),
   MaBangHangVe varchar(20),
   GiaTien float,
   CMND varchar(20),
   DeleteFlag bit DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

create table BangHangVe(
   MaBanHangVe varchar(20) primary key,
   TenHangVe varchar(10),
   GiaHangVe float,
   MaKhoang varchar(20),
   DeleteFlag bit DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

create table KhachHang(
   CMND varchar(20) primary key,
   NgaySinh DateTime,
   DienThoai varchar(12),
   DoTuoi varchar(20),
   DeleteFlag varchar(1) DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

create table Khoang(
   MaKhoang varchar(20) primary key,
   TenVitri varchar(10),
   GhiChu varchar(10),
   DeleteFlag varchar(1) DEFAULT 0,
   BatDau datetime default null,
   KetThuc datetime default null
);

Alter table Tau add foreign key (MaLG) references LoaiGhe(MaLG);
Alter table Tau add foreign key (MaLT) references LoaiTau(MaLT);
Alter table ChiTietLichTau add foreign key (MaGa) references Ga(MaGa);
Alter table ChiTietLichTau add foreign key (MaLT) references LichTau(MaLT);
Alter table LichTau add foreign key(MaTau) references Tau(MaTau);
Alter table VeTau add foreign key(MaLT) references LichTau(MaLT);
Alter table VeTau add foreign key(CMND) references KhachHang(CMND);
Alter table BangHangVe add foreign key (MaKhoang) references Khoang(MaKhoang);
Alter table VeTau add foreign key ( MaBangHangVe) references BangHangVe(MaBanHangVe);


INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB1','Gigazoom');
INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB2','Aimbu');
INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB3','Youopia');
INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB4','Yakitri');
INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB5','Yakidoo');
INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB6','Gabtype');
INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB7','Katz');
INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB8','Skyba');
INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB9','Kwilith');
INSERT INTO LoaiTau (MaLT,TenLT) VALUES ('SB10','Jayo');

INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF1','CUNG',50);
INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF2','MEM',80);
INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF3','	NAM',100);
INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF4','	CUNG',60);
INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF5','	MEM',80);
INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF6','	VIP',20);
INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF7','NAM ',40);
INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF8','	CUNG',80);
INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF9','	MEM',60);
INSERT INTO LoaiGhe (MaLG,TenLG,SL) VALUES ('AF10','NAM',50);

INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF1','SB1','AF1');
INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF2','SB2','AF2');
INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF3','SB3','AF3');
INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF4','SB4','AF4');
INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF5','SB5','AF5');
INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF6','SB6','AF6');
INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF7','SB7','AF7');
INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF8','SB8','AF8');
INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF9','SB9','AF9');
INSERT INTO Tau(MaTau,MaLT,MaLG) VALUES ('SF10','SB10','AF10');

INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA1','525','Penstemon');
INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA2','Diamante','Penstemon');
INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA3','Corvette','Keurboom');
INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA4','A6','Rim Lichen');
INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA5','C8 Spyder','Pagosa');
INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA6','Outlander','Mustang');
INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA7','Savana 2500','	American ');
INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA8','Festiva','	Waihee');
INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA9','Mark LT','Spikerush');
INSERT INTO Ga(MaGa,TenGa,LoaiGa) VALUES ('GA10','Escalade ESV',' Flatsedge');

INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT1','SF1','525','Diamante',15/8,5,'A6',100000);
INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT2','SF2','Diamante','Penstemon',12/8,5,'A8',200000);
INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT3','SF3','Outlander','Mustang',16/7,5,'B6',40000);
INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT4','SF4','525','Diamante',20/11,5,'N5',50000);
INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT5','SF5','Mark LT','Spikerush',5/9,5,'A10',80000);
INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT6','SF6','Escalade ESV',' Flatsedge',8/5,5,'A5',60000);
INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT7','SF7','C8 Spyder','Pagosa',3/8,5,'A11',80000);
INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT8','SF8','525','Diamante',28/2,5,'G15',40000);
INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT9','SF9','Festiva','	Waihee',15/4,5,'H10',88000);
INSERT INTO LichTau(MaLT,MaTau,GaDi,GaDen,NgayDi,ThoiGianDi,GaTrungGian,GiaVe) VALUES ('LT11','SF10','Corvette','Keurboom',9/4,5,'A9',55000);

INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT1','GA1','LT1',30,'Sap khoi hanh');
INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT2','GA2','LT2',10,'Sap khoi hanh');
INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT3','GA3','LT3',20,'Sap khoi hanh');
INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT4','GA4','LT4',50,'Sap khoi hanh');
INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT5','GA5','LT5',40,'Sap khoi hanh');
INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT6','GA6','LT6',20,'Sap khoi hanh');
INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT7','GA7','LT7',30,'Sap khoi hanh');
INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT8','GA8','LT8',40,'Sap khoi hanh');
INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT9','GA9','LT9',60,'Sap khoi hanh');
INSERT INTO ChiTietLichTau(MaCT,MaGa,MaLT,ThoiGianDung,GhiChu) VALUES ('CT10','GA10','LT10',50,'Sap khoi hanh');

INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K1','Khoang1','Rong');
INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K2','Khoang2','Con');
INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K3','Khoang3','Hong');
INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K4','Khoang4','Tot');
INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K5','Khoang5','Dat');
INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K6','Khoang6','Tot');
INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K7','Khoang7','Tot');
INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K8','Khoang8','Tot');
INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K9','Khoang9','Tot');
INSERT INTO Khoang(MaKhoang,TenVitri,GhiChu) VALUES ('K10','Khoang10','Tot');

INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0956789152',1/5/1955,'0199456782','15');
INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0958723578',1/5/1956,'0199456782','50');
INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0154893218',1/8/1957,'0199456782','64');
INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0781321855',1/1/1958,'0199456782','70');
INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0152484234',1/21/1995,'0199456782','50');
INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0823483213',1/3/1985,'0199456782','45');
INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0978423185',1/4/1965,'0199456782','55');
INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0851328732',1/6/1985,'0199456782','55');
INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0954823123',1/7/1996,'0199456782','64');
INSERT INTO KhachHang(CMND,NgaySinh,DienThoai,DoTuoi) VALUES ('0648521843',1/3/1977,'0199456782','54');

INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH1','K1','BangVe1',100000);
INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH2','K2','BangVe2',200000);
INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH3','K3','BangVe3',300000);
INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH4','K4','BangVe4',400000);
INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH5','K5','BangVe5',500000);
INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH6','K6','BangVe6',600000);
INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH7','K7','BangVe7',700000);
INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH8','K8','BangVe8',800000);
INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH9','K9','BangVe9',900000);
INSERT INTO BangHangVe(MaBanHangVe,MaKhoang,TenHangVe,GiaHangVe) VALUES ('BH10','K10','BangVe10',1000000);

INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve1','LT1','0956789152','BH1',100000);
INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve2','LT2','0958723578','BH2',200000);
INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve3','LT3','0154893218','BH3',300000);
INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve4','LT4','0781321855','BH4',400000);
INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve5','LT5','0152484234','BH5',500000);
INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve6','LT6','0823483213','BH6',600000);
INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve7','LT7','0978423185','BH7',700000);
INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve8','LT8','0851328732','BH8',800000);
INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve9','LT9','0954823123','BH9',900000);
INSERT INTO VeTau(MaVeTau,MaLT,CMND,MaBangHangVe,GiaTien) VALUES ('Ve10','LT10','0956789152','BH10',1000000);




--Backup--
create table bk_LoaiTau(
   MaLT varchar(20) primary key,
   TenLT varchar(10),
   BatDau datetime DEFAULT NULL,
   KetThuc datetime DEFAULT NULL,
   bkup datetime DEFAULT NULL,
   DeleteTime datetime DEFAULT NULL
);
create table bk_LoaiGhe(
   MaLG varchar(20) primary key,
   TenLG varchar(10),
   SL int,
   BatDau datetime DEFAULT NULL,
   KetThuc datetime DEFAULT NULL,
   bkup datetime DEFAULT NULL,
   DeleteTime datetime DEFAULT NULL
);

create table bk_Tau(
   MaTau varchar(20) primary key,
   MaLG varchar(20),
   MaLT varchar(20),
   BatDau datetime DEFAULT NULL,
   KetThuc datetime DEFAULT NULL,
   bkup datetime DEFAULT NULL,
   DeleteTime datetime DEFAULT NULL
);

create table bk_Ga(
   MaGa varchar(20) primary key,
   TenGa varchar(10),
   LoaiGa varchar(10),
   BatDau datetime DEFAULT NULL,
   KetThuc datetime DEFAULT NULL,
   bkup datetime DEFAULT NULL,
   DeleteTime datetime DEFAULT NULL
);

create table bk_LichTau(
   MaLT varchar(20) primary key,
   MaTau varchar(20),
   GaDi varchar(10),
   GaDen varchar(10),
   NgayDi DateTime,
   ThoiGianDi DateTime,
   GaTrungGian varchar(10),
   GiaVe float,
   BatDau datetime DEFAULT NULL,
   KetThuc datetime DEFAULT NULL,
   bkup datetime DEFAULT NULL,
   DeleteTime datetime DEFAULT NULL
);

create table bk_ChiTietLichTau(
   MaCT varchar(20) primary key,
   MaGa varchar(20),
   MaLT varchar(20),
   ThoiGianDung datetime,
   GhiChu varchar(50),
   BatDau datetime DEFAULT NULL,
   KetThuc datetime DEFAULT NULL,
   bkup datetime DEFAULT NULL,
   DeleteTime datetime DEFAULT NULL
);

create table bk_VeTau(
   MaVeTau varchar(20) primary key,
   MaLT varchar(20),
   MaKH varchar(20),
   MaBangHangVe varchar(20),
   GiaTien float,
   CMND varchar(20),
   deleteflag bit,
   deleteTime dateTime
);

create table bk_BangHangVe(
   MaBanHangVe varchar(20) primary key,
   MaVT varchar(20),
   TenHangVe varchar(10),
   GiaHangVe float,
   MaKhoang varchar(20),
   BatDau datetime DEFAULT NULL,
   KetThuc datetime DEFAULT NULL,
   bkup datetime DEFAULT NULL,
   DeleteTime datetime DEFAULT NULL
   
);

create table bk_KhachHang(
   CMND varchar(20) primary key,
   NgaySinh DateTime,
   DienThoai varchar(12),
   DoTuoi varchar(20),
  BatDau datetime DEFAULT NULL,
   KetThuc datetime DEFAULT NULL,
   bkup datetime DEFAULT NULL,
   DeleteTime datetime DEFAULT NULL
);

create table bk_Khoang(
   MaKhoang varchar(20) primary key,
   TenVitri varchar(10),
   GhiChu varchar(10),
   BatDau datetime DEFAULT NULL,
   KetThuc datetime DEFAULT NULL,
   bkup datetime DEFAULT NULL,
   DeleteTime datetime DEFAULT NULL
);

Alter table bk_Tau add foreign key (MaLG) references bk_LoaiGhe(MaLG);
Alter table bk_Tau add foreign key (MaLT) references bk_LoaiTau(MaLT);
Alter table bk_ChiTietLichTau add foreign key (MaGa) references bk_Ga(MaGa);
Alter table bk_ChiTietLichTau add foreign key (MaLT) references bk_LichTau(MaLT);
Alter table bk_LichTau add foreign key(MaTau) references bk_Tau(MaTau);
Alter table bk_VeTau add foreign key(MaLT) references bk_LichTau(MaLT);
Alter table bk_VeTau add foreign key(CMND) references bk_KhachHang(CMND);
Alter table bk_BangHangVe add foreign key (MaKhoang) references bk_Khoang(MaKhoang);
Alter table bk_VeTau add foreign key ( MaBangHangVe) references bk_BangHangVe(MaBanHangVe);

--Trigger--

CREATE TRIGGER trg_LoaiTau 
ON LoaiTau 
AFTER INSERT
AS

	Insert into bk_LoaiTau
	
	
END
Go
  
