CREATE DATABASE demo_official
USE demo_official
CREATE TABLE tblChangdua (id int(10) NOT NULL AUTO_INCREMENT, ten varchar(255) NOT NULL, sovong int(10) NOT NULL, mota varchar(255), tblGiaidauid int(10) NOT NULL, tblTruongduaid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE tblDangkychangdua (id int(10) NOT NULL AUTO_INCREMENT, sovongvedich int(10), thoigiandua time, tblChangduaid int(10) NOT NULL, Tayduaid int(10) NOT NULL, tblDangkygiaidauid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE tblDangkygiaidau (id int(10) NOT NULL AUTO_INCREMENT, ghichu varchar(255), tblGiaidauid int(10) NOT NULL, tblDoiduaid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE tblDiemXephang (id int(10) NOT NULL AUTO_INCREMENT, ten varchar(255) NOT NULL, diem int(10) NOT NULL, xephangCandat int(10) NOT NULL, mota varchar(255), PRIMARY KEY (id));
CREATE TABLE tblDoidua (id int(10) NOT NULL AUTO_INCREMENT, ten varchar(255) NOT NULL, mota varchar(255), PRIMARY KEY (id));
CREATE TABLE tblGiaidau (id int(10) NOT NULL AUTO_INCREMENT, ten varchar(255) NOT NULL, ngaybatdau date NOT NULL, mota varchar(255), PRIMARY KEY (id));
CREATE TABLE tblNguoi (id int(10) NOT NULL AUTO_INCREMENT, ten varchar(255), ngaysinh date, diachi varchar(255), email varchar(255), dt varchar(255), PRIMARY KEY (id));
CREATE TABLE tblNhanvien (tblNguoid int(10) NOT NULL, username varchar(255) NOT NULL UNIQUE, password varchar(255) NOT NULL, vitri varchar(255) NOT NULL, ghichu varchar(255), PRIMARY KEY (tblNguoid));
CREATE TABLE tblTaydua (tblNguoiid int(10) NOT NULL, tblDoiduaid int(10) NOT NULL, PRIMARY KEY (tblNguoiid));
CREATE TABLE tblTruongdua (id int(10) NOT NULL AUTO_INCREMENT, ten varchar(255) NOT NULL, diadiem varchar(255) NOT NULL, dodai float NOT NULL, mota varchar(255), PRIMARY KEY (id));
ALTER TABLE tblTaydua ADD CONSTRAINT FKtblTaydua862333 FOREIGN KEY (tblNguoiid) REFERENCES tblNguoi (id);
ALTER TABLE tblNhanvien ADD CONSTRAINT FKtblNhanvie686263 FOREIGN KEY (tblNguoid) REFERENCES tblNguoi (id);
ALTER TABLE tblChangdua ADD CONSTRAINT FKtblChangdu355262 FOREIGN KEY (tblTruongduaid) REFERENCES tblTruongdua (id);
ALTER TABLE tblDangkychangdua ADD CONSTRAINT FKtblDangkyc961166 FOREIGN KEY (tblDangkygiaidauid) REFERENCES tblDangkygiaidau (id);
ALTER TABLE tblDangkychangdua ADD CONSTRAINT FKtblDangkyc960749 FOREIGN KEY (Tayduaid) REFERENCES tblTaydua (tblNguoiid);
ALTER TABLE tblDangkygiaidau ADD CONSTRAINT FKtblDangkyg191686 FOREIGN KEY (tblDoiduaid) REFERENCES tblDoidua (id);
ALTER TABLE tblDangkychangdua ADD CONSTRAINT FKtblDangkyc184809 FOREIGN KEY (tblChangduaid) REFERENCES tblChangdua (id);
ALTER TABLE tblTaydua ADD CONSTRAINT FKtblTaydua435284 FOREIGN KEY (tblDoiduaid) REFERENCES tblDoidua (id);
ALTER TABLE tblDangkygiaidau ADD CONSTRAINT FKtblDangkyg586291 FOREIGN KEY (tblGiaidauid) REFERENCES tblGiaidau (id);
ALTER TABLE tblChangdua ADD CONSTRAINT FKtblChangdu733949 FOREIGN KEY (tblGiaidauid) REFERENCES tblGiaidau (id);
