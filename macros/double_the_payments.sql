{%- macro double_payment(payment_amount_col, rounding = 0) -%}
    round({{ payment_amount_col }} * 2, {{ rounding }})
{%- endmacro -%}