# 4.2_FishPickles_i308
Your team task is to create a single .sql script that contains just the SQL SELECT queries that produce the output for the following 5 questions.

# Question 1

"We are trying to reduce menu items, so we are looking for poor sales. Please show me the item name, item price, and number sold in year 2013, but limit it to only ten items and list them in order of least number sold."

# Question 2

“Hmm... We probably should look at the total sales price. Please add (to the first query) the total sales for the items and order by the lowest 10 total sales. Let's see totals for 2013 and 2014."

Hint: This query can be written by making additions and/or minor changes to Question 1.

# Question 3
"I want compare the years 2011 and 2012 month by month to see what time of year is most profitable.”

Hint: This query requires some Googling to get the formats and sorting order exactly right.

# Question 4
“Now let's look at staffing. For each day of the week during 2003, 2004, and 2005, how many staff (total) were working when no one was working in the manager role?"

Hint: You will need to use a subquery. The subquery will find the days when a manager was working, and the main query will return data about the days not returned by the subquery.

Important Note: There are two different ways to write this that give different results. It turns out that the data is actually not consistent! Use the date in the emp_shift table rather than the day_of_week value in the shift table.

# Question 5
“Based upon question 4, show the full names, role, and date of any employees working on a day when no manager was on duty but at least 2 people were working in the years 2010 and 2011.”

Hint: This final query is challenging. It involves an extra level of subquery. You can adapt the answer to Question 4 as the top-level subquery.
