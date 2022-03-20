create database skilvulbookstore;
use skilvulbookstore;

create table penerbit(
id int(10) not null auto_increment primary key,
nama varchar(50) null,
kota varchar(50) null
);

create table penulis(
id int(10) not null auto_increment primary key,
nama varchar(50) null,
kota varchar(50) null
);

create table buku(
id int(10) not null auto_increment primary key,
isbn varchar(50) null,
judul varchar(50) null,
penulis varchar(50) null,
penerbit int(10) null,
harga int(10) null,
stock int(10) null
)

select buku.id, buku.judul as judul_buku ,penerbit.nama as nama_penerbit from buku
inner join penerbit on buku.id = penerbit.id;

select buku.id, buku.judul as judul_buku ,penerbit.nama as nama_penerbit from buku
left join penerbit on buku.id = penerbit.id;

select buku.id, buku.judul as judul_buku ,penerbit.nama as nama_penerbit from buku
right join penerbit on buku.id = penerbit.id;

SELECT MIN(harga) FROM buku;
SELECT MAX(harga) FROM buku;
select * from buku where kas < 100000;