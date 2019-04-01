connection: "db"

# include all the views
include: "*.view"


named_value_format: gbp_format {
  value_format: "\"£\"#,##0"
}

#datagroup: collection_time_display_default_datagroup {
 # sql_trigger: select sum(TOTAL_INC_AMOUNT) from cc.collection_time_display;;
  #max_cache_age: "1 hour"
#}

#persist_with: collection_time_display_default_datagroup


explore :collection_time_display {}
