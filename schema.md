```csv
name,type,aggregatable,description
datetime,date,true,'Metric value date (eg. when the commits are made).'
grimoire_creation_date,date,true,'Metric value date (eg. when the commits are made).'
id,keyword,true,'Unique ID of the item (combination of metric class and uuid).'
is_gitqm_date,long,true,'Field containing '1' that allows to sum fields when concatenating with other indexes.'
metric_class,keyword,true,'Category of the metric.'
metric_desc,keyword,true,'Description of the metric.'
metric_es_compute,keyword,true,'Sample.'
metric_es_value,long,true,'Value of the metric'
metric_es_value_weighted,long,true,'Weight of the metric.'
metric_id,keyword,true,'ID of the metric.
metric_name,keyword,true,'Name of the metric.'
metric_type,keyword,true,'Type of the metric.'
project,keyword,true,'Project.'
uuid,keyword,true,'Perceval UUID.'
```
