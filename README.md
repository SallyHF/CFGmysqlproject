# CFGmysqlproject

This is a mySQL database created for CodeFirstGirls Data and SQL course. 

The database is designed for an online character goods store.
Includes:
1) An EER Diagram

2) creations of relevant tables with appropriate primary and foreign keys.

3) view for purchases made during a special promotion that ran from a specific period and on a scenario that
customers would receive a special code for free gift if a single purchase is more than or equal to 500.00,
a query to show only the customers with single purchase that met the criteria

4) demonsration to use a stored procedure to view customer details by filtering with a parameter ie last name

5) using triggers to create an audit trail for a specific table with hard delete

6) creating a stored function to call up mailing list subscribers who have not made a first purchase 
including those who created customer accounts but have not made a purchase as a basis of promotion eligibilty

7) Performing a query with subquery to find the top selling products for each category (by quantity not total sales)
using ROW_NUMBER() to assign a ranking for each category by partitioning rows based on categories
- using RNK after the subquery in the main query to input the number of rankings to display for each category.

