select m.item_name, m.price, SUM(od.qty) as quantity_sold
from menu m
join order_detail od on m.id = od.menuid
join order_main om on od.orderid = om.id
where year (om.odate) = 2013
group by m.item_name, m.price
order by quantity_sold asc, m.item_name asc
limit 10;

select m.item_name as item, m.price as price, sum(od.qty) as qty, sum(od.qty*m.price) as sales
from menu m
join order_detail od on m.id = od.menuid
join order_main om on od.orderid = om.id
where year (om.odate) IN(2013,2014)
group by m.item_name, m.price
order by sales
limit 10;

SELECT MONTHNAME(om.odate) as "Month", YEAR(om.odate) as "Year", CONCAT('$', FORMAT(SUM(m.price * od.qty),2)) as "Sales"
FROM menu as m 
JOIN order_detail as od ON od.menuid=m.id
JOIN order_main as om ON om.id=od.orderid
GROUP BY Month, Year HAVING Year in ('2011','2012')
ORDER BY MONTH(om.odate), YEAR(om.odate);

select dayname(e.wdate) as day_of_week, count(e.empid) as employee_count
from emp_shift as e
where e.wdate not in
	(select distinct e.wdate as date
    	from emp_shift as e
    	WHERE e.role = 'manager'
    	order by e.shiftid)
and year(e.wdate)  between 2003 and 2005
group by day_of_week
order by employee_count DESC;

SELECT CONCAT(e.fname, ' ', e.lname) AS full_name, es.role AS role, DATE_FORMAT(es.wdate, '%b %D %Y') AS date
FROM employee AS e
JOIN emp_shift AS es ON e.id = es.empid
WHERE es.wdate NOT IN (
	SELECT DISTINCT es.wdate
	FROM emp_shift AS es
	WHERE es.role = 'manager'
)
AND YEAR(es.wdate) BETWEEN 2010 AND 2011
AND es.empid IN (
	SELECT empid
	FROM emp_shift
	WHERE YEAR(wdate) BETWEEN 2010 AND 2011
	GROUP BY empid
	HAVING COUNT(DISTINCT YEAR(wdate)) >= 2
)
ORDER BY es.wdate;