{{
    config(
        materialized='incremental'
    )
}}

with sf_query_data as (
    select * from {{ ref('stg_snowflake_metadata__query_history') }}
    {% if is_incremental() %}
    where start_time >= (select max(max_query_start_time) from {{ this }})
    {% endif %}

), 



queries_by_user_by_minute as (
    select 
        user_name,
        date_trunc('minute', start_time) as query_run_ts_mins,
		max(start_time) as max_query_start_time,
        sum(total_elapsed_time) as query_time,
        current_timestamp() as added_to_table_ts
    from sf_query_data
        group by 1,2,5
)

select 
    * 
from queries_by_user_by_minute 