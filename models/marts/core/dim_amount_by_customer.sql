with amount_by_customer as (

    select

        customer_id,
        sum(amount) as lifetime_value
        from {{ref ('fct_orders')}}
        group by customer_id
) select * from amount_by_customer