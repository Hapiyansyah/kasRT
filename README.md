# Kelompok 7 Basis Data Pengelolaan Data Kas RT

```
Nama Anggota :
1. Rizky S.F (312210686 / LAPORAN) KETUA KELOMPOK 
2. M.Hapiyansyah (312210243 / DDL-Script)
3. Raja H (312210235 / ER-D)
4. Faiz (312210223 / SQL JOIN)
5. Ryamizar (312210185 / SQL CRUD)

```
## 1. Stuktur ER-D (Entity Relationship - Diagram)

![erd](ER-D/erd.jpg)

```
 Ada 4 entitas pada data pengelolaan kas RT, entitasnya adalah data warga, jenis iuran, transaksi iuran dan laporan transaksi.

* Entitas data warga memiliki relationship "bayar" many to many pada entitas data transaksi iuran, 
* Entitas jenis iuran memiliki relationship "ragam/jenis" one to many pada entitas data transaksi iuran, 
* Entitas data transaksi iuran memiliki relationship"arsip" many to one pada entitas laporan keuangan.

```
## 2. DDL Script (Data Definition Language)

### - Membuat Database

![T1](poto/T1.png)

![T2](poto/T2.png)

### - Membuat Tabel Data Warga

![T3](poto/T3.png)

### - Membuat Tabel Jenis Iuran

![T4](poto/T4.png)

### - Membuat Tabel Transaksi Iuran

![T5](poto/T5.png)

### - Membuat Tabel Laporan Transaksi

![T6](poto/T6.png)

## 3. SQL CRUD (Create, Read, Update, and Delete)

### - Create/Insert dan Read Tabel Data Warga 

![T7](poto/T7.png)

### - Create/Insert dan Read Tabel Jenis Iuran

![T8](poto/T8.png)

### - Create/Insert dan Read Tabel Transaksi Iuran

![T9](poto/T9.png)

### - Create/Insert dan Read Tabel Laporan Transaksi

![T10](poto/T10.png)

### - Update Data Tabel Data Warga

![T11](poto/T11.png)

### - Delete Data Tabel Data Warga 

![T12](poto/T12.png)

## 4. SQL Join (joining table)

### - Inner Join

![P13](poto/P13.png)

### - Right Join

![P14](poto/P14.png)

### - Left Join

![P15](poto/P15.png)

```
sekian laporan pembuatan pengelolaan data KasRT dari kelompok 7, 
Terima Kasih

```
