{% snapshot opps_snapshot %}

{{
    config(
      target_database='steve_d_raw_data',
      target_schema='snapshots',
      unique_key='companextid',

      strategy='timestamp',
      updated_at='modifieddate',
    )
}}

select * from {{ source('salesforce_data', 'opportunites') }}

{% endsnapshot %}