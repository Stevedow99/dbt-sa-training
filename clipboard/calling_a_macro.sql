with stripe_payments_sample as (

    Select * from {{ ref('stg_stripe__payments') }}
    limit 1000
)

{% set pay_amount_col = 'PAYMENT_AMOUNT*.35' %}

Select 
{{ double_payment(pay_amount_col, 2) }} as double_payment,
PAYMENT_AMOUNT,
PAYMENT_ID

from stripe_payments_sample