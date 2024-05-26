-- latihan dan belajar SQL
select * from productlines;

-- case 1 (manager ingin mengetahui produk-produk di toko cars retails)
select * from products;


-- case 1.1 (manajer ingin mengetahui apa saja kategori produk yang dijual di toko tsb)
select distinct productline from products;

-- case 1.2 (manajer ingin melihat 5 harga product termurah di toko)
select productname, productline, buyprice from products order by buyprice ASC limit 5;

-- case 1.3
-- profit = revenue - biaya produk
-- revenue = harga_jual x jumlah_stok
-- biaya_produk = harga_beli x jumlah stok
select productname, quantityinstock, buyprice, msrp, buyprice - quantityinstock as biaya_produk, msrp * quantityinstock as revenue  
from products order by revenue DESC limit 10;

-- case 2.1 (manajer ingin tahu customer yg incorporated (hint ada inc))
select * from customers;
select customername from customers where customername like '%Inc.';

-- case 2.2 (manajer ingin mengetahui customers dr spesifik kota & negara jepang)
select customername, phone, city, country from customers where city = 'NYC' or city = 'San Francisco' or city = 'Brickhaven' or country = 'Japan';

-- case 2.3 (manajer ingin memgetahui customer yg memiliki credit limit & dari USA)
select customername, creditlimit, country from customers where creditlimit is not null and country = 'USA' limit 7;


-- case 2.4 customer dgn transaksi paling besar
select * from payments order by amount DESC limit 10;