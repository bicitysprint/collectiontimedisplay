view: ut_returnjourneysfreq {
  sql_table_name: CC.UT_RETURNJOURNEYSFREQ ;;

  dimension: frequency_desc {
    type: string
    sql: ${TABLE}."FREQUENCY_DESC" ;;
  }

  dimension: sc {
    type: string
    sql: ${TABLE}."SC" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
