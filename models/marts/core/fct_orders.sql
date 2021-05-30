with customer_orders as (
    select
        p.order_id,
        o.customer_id,
        p.amount
    from {{ ref('stg_payments') }} p
    left join {{ ref('stg_orders') }} o
    on p.order_id=o.order_id
)

select * from customer_orders