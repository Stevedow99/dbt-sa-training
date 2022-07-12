
Select {{ get_distinct_values(ref('stg_stripe__payments'), 'payment_status') }}