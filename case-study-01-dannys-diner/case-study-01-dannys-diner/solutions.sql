-- =====================================================
-- Danny's Diner
-- Case Study Solutions
-- =====================================================


-- Question 1
-- What is the total amount each customer spent at the restaurant?
SELECT customer_id,
SUM(price) AS total_spent
FROM dannys_diner.sales
JOIN dannys_diner.menu
  ON sales.product_id = menu.product_id
GROUP BY customer_id;


-- Question 2
-- How many days has each customer visited the restaurant?
SELECT customer_id,
COUNT(DISTINCT order_date) AS visit_days
FROM dannys_diner.sales
GROUP BY customer_id;

-- Question 3
-- What was the first item from the menu purchased by each customer?
