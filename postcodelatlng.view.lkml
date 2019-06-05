view: postcodelatlng {
  sql_table_name: CC.POSTCODELATLNG ;;

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }


  dimension: postcode_longlat {
    type: location
    sql_latitude:${TABLE}."LATITUDE" ;;
    sql_longitude:${TABLE}."LONGITUDE"  ;;
  }



  dimension: postcode {
    type: string
    sql: ${TABLE}."POSTCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
