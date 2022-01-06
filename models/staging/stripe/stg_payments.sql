with payments as (

    select
        orderid as order_id,
        paymentmethod as payment_method,
        created,
        status,
        amount / 100 as amount

    from raw.stripe.payment
    where status = 'success'

)

select * from payments