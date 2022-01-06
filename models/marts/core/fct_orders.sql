with customers as (
        select * from {{ ref('stg_customers') }}
),

orders as (
        select * from {{ ref('stg_orders') }}
),

payments as (
        select * from {{ ref('stg_payments') }}
),

customer_orders as (

    SELECT 
    orders.order_id,
    customers.customer_id,
    payments.amount

    FROM orders
    LEFT JOIN customers USING (customer_id)
    LEFT JOIN payments USING (order_id) 

)

SELECT * FROM customer_orders