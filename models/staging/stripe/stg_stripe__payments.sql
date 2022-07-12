with payments_source as (
    select * from {{ source('stripe', 'payment') }}
)

select 
    id as payment_id,
    orderid as order_id,
    status as payment_status,
    round(amount/100.0,2) as payment_amount
from payments_source