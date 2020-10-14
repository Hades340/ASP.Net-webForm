CREATE DATABASE JustShop1
USE JustShop1
 create table LoaiSanPham(
	MaLoai int not null IDENTITY(1,1) PRIMARY KEY ,
	TenLoai nvarchar(50) not null,
	TrichDan nvarchar(4000) not null,
	AnhTieuBieu nvarchar(50) 
 )
 go
 
 create table SanPham(
	MaSp int  IDENTITY(1,1) primary key NOT NULL ,
	MaLoai int not null,
	Tensp nvarchar(50) not null,
	HinhAnh nvarchar(50)  ,
	NoiDung nvarchar(4000) ,
	MoTa nvarchar(4000),
	SoLuong int not null,
	GiaTien FLOAT ,
	FOREIGN KEY (MaLoai) REFERENCES LoaiSanPham(MaLoai),
	
 )
 go

 create table TaiKhoan(
	TaiKhoan nvarchar(50) not null primary key,
	MatKhau  nchar(30) not null,
	TenNV nvarchar(20) not null,
 )
 go
 create table TinTuc(
	MaTin int  IDENTITY(1,1) PRIMARY KEY NOT NULL,
	TieuDe nvarchar(50) not null,
	NoiDung nvarchar(4000),
	NgayDang date ,
 )
 go
 drop table TinTuc
 create table PhanHoi(
	STT INT  IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Ten nvarchar(50) not null,
	Email nvarchar(50) ,
	DienThoai int not null,
	TieuDePhanHoi nvarchar(4000) ,
	NoiDungPhanHoi nvarchar(4000) not null,
 )
 go
 create table DonHang(
	MaDonHang int  IDENTITY(1,1) PRIMARY KEY NOT NULL,
	TenKH nvarchar(50) not null ,
	SDT int not null,
	DiaChi nvarchar(50) not null,
	SoLuong int ,
	TongTien float,
	NgayMua date not null,
 )
 go
 create table CTDonHang(
	MaCT int  IDENTITY(1,1) primary key NOT NULL,
	MaDonHang int Not NULL,
	MaSp int not null,
	SoLuong int not null,
	Gia float not null,
	GiaTien float not null,
	FOREIGN KEY (MaDonHang) REFERENCES DonHang(MaDonHang),
	FOREIGN KEY (MaSp) REFERENCES SanPham(MaSp),
 )
 go
 

 create table ThongKe (
	ID int primary key  IDENTITY(1,1) NOT NULL,
	SoLuongBan int ,
	TongDoanhThu float ,
	SoLuongDonHang int ,
	SanPhamBanChay nvarchar(4000) ,
	Ngay int not null,
 )
 create table PhieuNhapHang(
	MaPhieuNhap int IDENTITY (1,1) PRIMARY KEY NOT NULL,
	SoLuongNhap int ,
	NgayNhap date not null,
	TongTien float
)
go
drop table PhieuNhapHang
drop table CTPhieunhap
create table CTPhieunhap(
	MaPhieuNhap int not null,
	MaCTPhieuNhap int IDENTITY(1,1) primary key NOT NULL,
	MaSp int not null,
	Soluong int,
	GiaNhap float ,
	MaLoai int not null,
	FOREIGN KEY (MaLoai) REFERENCES LoaiSanPham(MaLoai),
	FOREIGN KEY (MaPhieuNhap) REFERENCES PhieuNhapHang(MaPhieuNhap),
	FOREIGN KEY (MaSp) REFERENCES SanPham(MaSp)
)
go
drop table CTPhieunhap
 /*tạo biến default cho một số cột trong bảng*/
  CREATE DEFAULT non_update AS 'Chưa được cập nhật'
  EXEC sp_bindefault  non_update,'TinTuc.NoiDung'
  EXEC sp_bindefault  non_update,'TinTuc.TieuDe'
  EXEC sp_bindefault  non_update,'SanPham.NoiDung'
  EXEC sp_bindefault  non_update,'SanPham.Mota'
  EXEC sp_bindefault non_update,'SanPham.HinhAnh'
  EXEC sp_bindefault  non_update,'LoaiSanPham.TrichDan'
  EXEC sp_bindefault non_update,'LoaiSanPham.AnhTieuBieu'

  CREATE DEFAULT unknown AS 'Không có thông tin'
  EXEC sp_bindefault unknown,'PhanHoi.TieuDePhanHoi'
  EXEC sp_bindefault unknown, 'PhanHoi.Email'

  CREATE DEFAULT ONE AS 1
	EXEC sp_bindefault ONE , 'CTDonHang.SoLuong'

	CREATE DEFAULT zero AS 0
	EXEC sp_bindefault zero , 'DonHang.TongTien'
	exec sp_bindefault zero , 'SanPham.SoLuong'
	/*viết một số quy tắc nhập*/
CREATE RULE ngay AS @ngay<getdate()
sp_bindrule ngay,'TinTuc.NgayDang'
sp_bindrule ngay,'TinTuc.NgayDang'
CREATE TRIGGER CapNhatSoLuong ON CTPhieuNhap 
FOR UPDATE, INSERT
AS 
BEGIN
	UPDATE SanPham
	SET SoLuong = SoLuong + (select sum(Soluong) from CTPhieuNhap where CTPhieuNhap.MaSp = SanPham.MaSp)
END
CREATE TRIGGER CapNhatSoLuong1 ON CTDonHang 
FOR UPDATE, INSERT
AS 
BEGIN
	UPDATE SanPham
	SET SoLuong = SoLuong - (select sum(Soluong) from CTDonHang where CTDonHang.MaSp = SanPham.MaSp)
END
drop trigger CapNhatSoLuong1
create trigger soluongnhap on CTPhieunhap
for insert,update
as
begin	
	
	update PhieuNhapHang
	set SoLuongNhap =  (select sum(CTPhieunhap.Soluong) from CTPhieunhap 
							where PhieuNhapHang.MaPhieuNhap = CTPhieunhap.MaPhieuNhap) 
							
end
drop trigger  soluongnhap
drop trigger tongtien1
drop trigger CapNhatSoLuong
create trigger tongtien1 on CTPhieuNhap
for insert,update 
as
begin 

update PhieuNhapHang
set TongTien = (select sum(CTPhieunhap.GiaNhap) from CTPhieunhap
				where CTPhieuNhap.MaPhieuNhap = PhieuNhapHang.MaPhieuNhap 
				)
end

create trigger setngaynhap on PhieuNhapHang
for insert, update 
as
begin 
	update PhieuNhapHang
	set NgayNhap = GETDATE()
end


CREATE TRIGGER ngaydang ON TinTuc
FOR UPDATE,INSERT
AS
BEGIN
	UPDATE TinTuc
	SET NgayDang = getdate();
END
 

	/*viết một số trigger cho việc cập nhật sản phẩm */
CREATE TRIGGER tongtien ON CTDonHang
FOR UPDATE,INSERT
AS
BEGIN
	UPDATE DonHang
	SET TongTien = (SELECT SUM(GiaTien) FROM CTDonHang WHERE DonHang.MaDonHang = CTDonHang.MaDonHang )
END
 
/**/

CREATE TRIGGER soluong ON CTDonHang
FOR UPDATE, INSERT
AS 
BEGIN 
	UPDATE DonHang 
	SET SoLuong = (SELECT SUM(SoLuong) FROM CTDonHang WHERE DonHang.MaDonHang = CTDonHang.MaDonHang )
END

/**/
CREATE TRIGGER ngay_mua ON DonHang
FOR INSERT,UPDATE 
AS
BEGIN
	UPDATE DonHang 
	SET NgayMua = GETDATE()
END

/**/
CREATE TRIGGER gia ON CTDonHang 
FOR INSERT,UPDATE 
AS
BEGIN 
	UPDATE CTDonHang
	SET GiaTien = Gia *SoLuong
END

/**/
CREATE TRIGGER gia2sp ON SanPham 
FOR INSERT,UPDATE 
AS
BEGIN 
	DECLARE @gia float , @ma1 int,@ma2 int
	set @gia = (SELECT GiaTien from SanPham)
	set @ma1 = (select MaSp from CTDonHang)
	set @ma2 = (select MaSp from SanPham)
	if(@ma2 = @ma1)
		UPDATE CTDonHang
		SET Gia = @gia
		
END
DROP TRIGGER gia2sp
/**/
CREATE PROCEDURE capnhat 
AS 
begin
	update CTDonHang
	set Gia = (Select SanPham.GiaTien from SanPham where SanPham.MaSp = CTDonHang.MaSp)
end

capnhat


/**/
CREATE proc thongke1 
AS
BEGIN
	UPDATE ThongKe 
	SET SoLuongBan = (SELECT SUM(SoLuong) FROM DonHang WHERE MONTH(DonHang.NgayMua) = ThongKe.Ngay)
END
drop proc thongke1

/**/
CREATE proc thongke2 
AS
BEGIN
	UPDATE ThongKe
	SET TongDoanhThu = (SELECT SUM(TongTien) FROM DonHang WHERE MONTH(DonHang.NgayMua) = ThongKe.Ngay)
END
drop proc thongke2
/**/
CREATE TRIGGER thongke3 ON ThongKe
FOR INSERT,UPDATE 
AS
BEGIN
	UPDATE ThongKe
	SET Ngay = MONTH(GETDATE())
END

/**/
CREATE proc thongke4 
AS
BEGIN 
	UPDATE ThongKe
	SET SoLuongDonHang =  (SELECT COUNT(*) FROM DonHang WHERE MONTH(DonHang.NgayMua) = ThongKe.Ngay)
END
drop proc thongke4
/**/
CREATE proc thongke5 
AS
BEGIN
	UPDATE ThongKe
	SET SanPhamBanChay =(SELECT top(1) TenSP FROM SanPham, CTDonHang 
								WHERE  SanPham.MaSp = CTDonHang.MaSp 
								GROUP BY TenSP
								HAVING COUNT(CTDonHang.MaSp) >= ALL(SELECT COUNT(CTDonHang.MaSp) 
																			FROM CTDonHang,SanPham 
																			WHERE SanPham.MaSp=CTDonHang.MaSp 
																			GROUP BY CTDonHang.MaSp ))
END
drop proc thongke5
drop trigger thongke1
drop trigger thongke2
drop trigger thongke3
drop trigger thongke4
drop trigger thongke4
thongke1
thongke2
thongke4
thongke5

DROP TABLE CTDonHang
DROP TABLE LoaiSanPham
DROP TABLE DonHang
DROP TABLE SanPham
DROP TABLE ThongKe
DROP TABLE TinTuc
DROP TABLE PhanHoi
DROP TABLE TaiKhoan
SELECT SanPham.GiaTien FROM SanPham,CTDonHang WHERE SanPham.MaSp = CTDonHang.MaSp
SELECT CTDonHang.MaSp  ,TenSP FROM SanPham, CTDonHang 
WHERE SanPham.MaSp=CTDonHang.MaSp 
GROUP BY TenSP,CTDonHang.MaSp 
HAVING COUNT(CTDonHang.MaSp) >= ALL(SELECT COUNT(CTDonHang.MaSp) FROM CTDonHang,SanPham WHERE SanPham.MaSp=CTDonHang.MaSp GROUP BY CTDonHang.MaSp )
ALTER TABLE TinTuc
   ADD Anh nvarchar(50);
ALTER TABLE CTDonHang
   ALTER COLUMN GiaTien float null;
ALTER TABLE CTDonHang
   ADD  MaLoai int null foreign key (MaLoai) REFERENCES LoaiSanPham();
ALTER TABLE SanPham
   ALTER COLUMN SoLuong int not null;
ALTER TABLE SanPham
   Drop COLUMN HetHan;
ALTER TABLE HetHan
	DROP CONSTRAINT MaPhieuNhap 
ALTER TABLE SanPham  
	ADD HanSuDung date,
		 HetHan bit

create trigger kiemtrahethan on SanPham
for insert,update
as
begin 
	declare @han date , @hethan bit
	set @han = (select HanSuDung from inserted)
	set @hethan = (select HetHan from inserted)
	
	if(@han >= getdate())
		update SanPham
		set @hethan = '1'
	else
		update SanPham
		set @hethan = '0'
end
drop trigger kiemtrahethan