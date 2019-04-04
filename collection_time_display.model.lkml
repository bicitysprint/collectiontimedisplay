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


explore :collection_time_display {
fields: [ALL_FIELDS*,-service_derived_tbl.code, -vehicle_derived_tbl.vehicle_code]

  join: service_derived_tbl {

    type: left_outer
    sql_on: ${collection_time_display.service_code}=${service_derived_tbl.code} ;;
    relationship: one_to_one

  }


  join: vehicle_derived_tbl {

    type: left_outer
    sql_on: ${collection_time_display.vehicle_code}=${vehicle_derived_tbl.vehicle_code} ;;
    relationship: one_to_one

  }






}
