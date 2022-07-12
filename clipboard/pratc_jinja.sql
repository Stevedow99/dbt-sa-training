{%- set level = 15 -%}

{%- if level > 10 -%}
	{%- set level_dif = 'hard' -%} 
{%- else -%}
	{%- set level_dif = 'easy' -%} 
{%- endif -%}
{% set random_dict = {
	'my_fave_item_one' : 'tree',
	'my_fave_item_two' : 'house',
  'my_fave_item_three' : 'dog'
} %}


-- print out both vars

{{ random_dict['my_fave_item_one'] }}
{{ level_dif, level }}