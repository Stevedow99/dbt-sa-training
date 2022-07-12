 -- viewing targets in snowflake

-- common (regardless of target type)
{{ target.profile_name }}
{{ target.name }}
{{ target.schema }}
{{ target.type }}
{{ target.threads }}

 -- Adapter-specific (Snowflake)
{{ target.database }}
{{ target.warehouse }}
{{ target.user }}
{{ target.role }}
{{ target.account }}
