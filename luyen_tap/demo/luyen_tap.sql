create database luyen_tap;
use luyen_tap;
 
 
create table hoc_sinh(
ma_hoc_sinh int not null auto_increment primary key,
ten_hoc_sinh varchar(120) not null,
gioi_tinh varchar(50) not null,
tuoi int not null,
ten_lop varchar(100) not null,
trang_thai int not null
);

create table diem(
ma_hoc_sinh int not null auto_increment primary key,
diem_van int not null,
diem_toan int not null,
diem_anh int not null,
diem_su int not null,
diem_dia_ly int not null,
trang_thai int not null,
FOREIGN KEY (ma_hoc_sinh)
references hoc_sinh (ma_hoc_sinh)
);
insert into hoc_sinh (ten_hoc_sinh,gioi_tinh,tuoi,ten_lop,trang_thai) value 
('Đinh Thanh Hải','Nam',25,'C0423G1',0),
 ('Phạm Công Nam','Nam',26,'C02G12023',0),
 ('Phạm Quang Hưng','Nam',25,'C02G12023',0),
 ('Nguyễn Thị Yến Hoa','Nữ',24,'C0423G1',0);
 
 insert into diem (diem_van,diem_toan,diem_anh,diem_su,diem_dia_ly,trang_thai) value
 (6,7,8,9,10,0),
 (10,9,8,7,8,0),
 (8,8,7,9,10,0),
 (9,9,8,8,8,0);
 