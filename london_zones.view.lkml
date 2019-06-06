view: london_zones {
  sql_table_name: CC.LONDON_ZONES ;;

  dimension: postcode_zone {
    type: string
    sql: ${TABLE}."POSTCODE_ZONE" ;;
  }

  dimension: zone {
    type: number
    sql: ${TABLE}."ZONE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
