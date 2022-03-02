with customers as (

    select
        {{ dbt_utils.surrogate_key('id', 'first_name', 'last_name') }} AS generated_pk,
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop', 'customers')}}

)

select * from customers