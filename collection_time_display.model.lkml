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
persist_for: "10 minute"
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



  join: radfreq {
    type: left_outer
    sql_on: ${collection_time_display.job_circuit_code}=${radfreq.radio_freq_code} ;;
    relationship: many_to_one

  }


join: ut_returnjourneysfreq {
  type: left_outer
  sql_on: ${radfreq.frequency_desc}=${ut_returnjourneysfreq.frequency_desc} ;;
  relationship: one_to_one

}

join: postcodelatlng {
  type: left_outer
  sql_on: ${collection_time_display.col} = ${postcodelatlng.postcode} ;;
  relationship: many_to_one

}



}
