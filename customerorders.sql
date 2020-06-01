--Answer 1:

select cust_id, seg_name, update_at from segments
where active_flag = 'Y'
order by update_at DESC


--Answer 2: 

select T.prod_id, prod_name, count(T.trans_id)from transactions AS T
inner join products AS P
ON T.prod_id = P.prod_id
where trans_dt BETWEEN '2016-01-01' AND '2016-05-31' 
group by T.prod_id, P.prod_name


--Answer 3:

select cust_id, seg_name, MAX(update_at)from segments
where update_at >= '2016-03-01'
group by cust_id, seg_name
order by cust_id


--Answer 4:

select  seg_name, category, sum(item_qty * item_price) AS Revenue from transactions AS T
INNER JOIN segments as S
ON T.cust_id = S.cust_id
INNER JOIN products as P
ON T.prod_id = P.prod_id
where active_flag = 'Y'
group by seg_name, category
order by 3 DESC


