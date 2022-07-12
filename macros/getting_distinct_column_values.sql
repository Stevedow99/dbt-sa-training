{% macro get_distinct_values(table_name, column_name) %}

  {% set sql_distinct %}
  Select distinct {{column_name}} from {{table_name}}
  {% endset %}
  
  {% if execute %}
    {% set distinct_values =  run_query(sql_distinct).columns[0].values() %}
  {% endif %}

  {{ log('distinct values are: ' ~ distinct_values, info=True) }}
  
  {{distinct_values}}

{% endmacro %}