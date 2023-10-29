--Query 1: Rata-rata Umur Customer berdasarkan Marital Status
select "Marital Status", AVG(age) as "Rata-rata Umur"
from customer
where "Marital Status" <> ''
group by "Marital Status"

--Query 2: Rata-rata Umur Customer berdasarkan Gender:
select case 
	when gender = 0 then 'Wanita'
	when gender = 1 then 'Pria'
end as "Gender",
AVG(age) as "Rata-rata umur"
from customer
group by Gender

--Query 3: Nama Store dengan Total Quantity Terbanyak:
select storename, sum(qty) as "Total Quantity"
from "transaction" t 
inner join store s on t.storeid = s.storeid 
group by storename
order by "Total Quantity" desc 
limit 1

--Query 4: Nama Produk Terlaris dengan Total Amount Terbanyak:
select "Product Name", sum(totalamount) as "Total Amount"
from "transaction" t 
inner join product p on t.productid = p.productid 
group by "Product Name"
order by "Total Amount" desc 
limit 1
