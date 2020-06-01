--Selecting lastest date of each order

select C.customername, P.productname, PO.orderquantity, PO.orderdate from PURCHASE_ORDER AS PO
inner join CUSTOMER AS C
on PO.customer_id = C.customer_id and order_id = 

(
SELECT TOP 1 sub.order_id 
from purchase_order as sub
where sub.customer_id = PO.customer_id
order by sub.orderdate DESC
)
inner join product AS P
on PO.product_id = P.product_id
order by PO.orderdate DESC
