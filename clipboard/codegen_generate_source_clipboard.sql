{{ codegen.generate_source(
    name='snowflake_metadata',
    database_name='SNOWFLAKE',
    schema_name='ACCOUNT_USAGE',
    table_names=['QUERY_HISTORY'],
    generate_columns = True
) }}