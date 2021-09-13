select p.name, c.name  from people as p
inner join companies as c on p.company_id = c.id 
inner join locations as l on c.location_id = l.id
where l.name = (
    
    
select LocaName

from (
    
select l.name as LocaName, (count(c.name)) as totals  from people as p
inner join companies as c on p.company_id = c.id 
inner join locations as l on c.location_id = l.id
group by l.name
order by totals DESC
limit 1 

) totalcounts

)
