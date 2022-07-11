{% docs __dbt_utils__ %}
# Utility macros
Our dbt project heavily uses this suite of utility macros, especially:
- `surrogate_key`
- `test_equality`
- `pivot`
{% enddocs %}

{% docs __snowplow__ %}
# Snowplow sessionization
Our organization uses this package of transformations to roll Snowplow events
up to page views and sessions.
{% enddocs %}