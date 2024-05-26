-- belajar basic select di SQL
-- mengambil semua kolom di table tsb
select * from customers;

-- mengakses beberapa kolom saja
select customername, customernumber from customers;

-- menggunakan operator aritmatika
select customernumber,amount, amount*2 as Bonus from payments;

-- memberi limit dari hasil query
select customernumber,amount, amount*2 as Bonus from payments limit 5;

-- mendapatkan data unik dengan menggunakan distinct
select * from employees;
select distinct employeenumber from employees;

-- mengurutkan data dari sebuah kolom
select * from payments order by amount desc;

-- mengurutkan data lebih dari 1 kolom
select * from payments order by amount, paymentdate desc;
