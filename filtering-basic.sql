-- belajar basic filtering data (where)
-- filter data menggunakan operator perbandingan
select * from payments where paymentdate > '2003-07-16';

-- filter berdasarkan dua kondisi atau lebih
select * from payments where customernumber = 119 AND paymentdate > '2003-07-16';

-- penggunaan dengan operator logika
select * from employees where employeenumber = 1002 OR officecode = '6';

-- filter dengan operator keanggotaan
select * from employees where employeenumber in (1002, 1619);

-- filter dengan operator matching
select * from employees where firstname like 'D%';

-- filter dengan operator range (rentang)
select * from payments where paymentdate between '2003-06-06' and '2004-10-19'; 



