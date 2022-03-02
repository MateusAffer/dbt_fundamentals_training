{% macro limit_data_in_dev(colum_name, dev_days_of_data = 3) %}

{% if target.name == 'default' %}

where {{ colum_name }} >= dateadd('day', {{dev_days_of_data}}, current_timestamp)

{% endif %}
{% endmacro %}