view: collection_time_display {
  sql_table_name: CC.COLLECTION_TIME_DISPLAY ;;

  dimension_group: booking {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."BOOKING_DATE" ;;
  }



  dimension: booking_d {
    type: date_time
    sql: ${TABLE}."BOOKING_DATE" ;;
  }

  dimension: pick_d {
    type: date_time
    sql: ${TABLE}."PICKUP_DATE" ;;
  }


dimension: bookingvscollection {

  type: number
  sql: datediff(minute,${booking_d},${pick_d}) ;;

}


dimension: bookingvscollectioncategory {


  type:  string
  sql:

  case
  when ${bookingvscollection} is null then 'not allocated/not pickedup'
  when ${bookingvscollection} = 0 then 'on time'
  when ${bookingvscollection} = -1 then '1 min early'
  when ${bookingvscollection} = -2 then '2 min early'
  when ${bookingvscollection} = -3 then '3 min early'
  when ${bookingvscollection} = -4 then '4 min early'
  when ${bookingvscollection} = -5 then '5 min early'
  when ${bookingvscollection} = -6 then '6 min early'
  when ${bookingvscollection} = -7 then '7 min early'
  when ${bookingvscollection} = -8 then '8 min early'
  when ${bookingvscollection} = -9 then '9 min early'
  when ${bookingvscollection} = -10 then '10 min early'
  when ${bookingvscollection} = -11 then '11 min early'
  when ${bookingvscollection} = -12 then '12 min early'
  when ${bookingvscollection} = -13 then '13 min early'
  when ${bookingvscollection} = -14 then '14 min early'
  when ${bookingvscollection} = -15 then '15 min early'
  when ${bookingvscollection} = -16 then '16 min early'
  when ${bookingvscollection} = -17 then '17 min early'
  when ${bookingvscollection} = -18 then '18 min early'
  when ${bookingvscollection} = -19 then '19 min early'
  when ${bookingvscollection} = -20 then '20 min early'
  when ${bookingvscollection} = -21 then '21 min early'
  when ${bookingvscollection} = -22 then '22 min early'
  when ${bookingvscollection} = -23 then '23 min early'
  when ${bookingvscollection} = -24 then '24 min early'
  when ${bookingvscollection} = -25 then '25 min early'
  when ${bookingvscollection} = -26 then '26 min early'
  when ${bookingvscollection} = -27 then '27 min early'
  when ${bookingvscollection} = -28 then '28 min early'
  when ${bookingvscollection} = -29 then '29 min early'
  when ${bookingvscollection} = -30 then '30 min early'
  when ${bookingvscollection} = -31 then '31 min early'
  when ${bookingvscollection} = -32 then '32 min early'
  when ${bookingvscollection} = -33 then '33 min early'
  when ${bookingvscollection} = -34 then '34 min early'
  when ${bookingvscollection} = -35 then '35 min early'
  when ${bookingvscollection} = -36 then '36 min early'
  when ${bookingvscollection} = -37 then '37 min early'
  when ${bookingvscollection} = -38 then '38 min early'
  when ${bookingvscollection} = -39 then '39 min early'
  when ${bookingvscollection} = -40 then '40 min early'
  when ${bookingvscollection} = -41 then '41 min early'
  when ${bookingvscollection} = -42 then '42 min early'
  when ${bookingvscollection} = -43 then '43 min early'
  when ${bookingvscollection} = -44 then '44 min early'
  when ${bookingvscollection} = -45 then '45 min early'
  when ${bookingvscollection} <-45 then '46+ min early'
  when ${bookingvscollection} = 1 then '1 min late'
  when ${bookingvscollection} = 2 then '2 min late'
  when ${bookingvscollection} = 3 then '3 min late'
  when ${bookingvscollection} = 4 then '4 min late'
  when ${bookingvscollection} = 5 then '5 min late'
  when ${bookingvscollection} = 6 then '6 min late'
  when ${bookingvscollection} = 7 then '7 min late'
  when ${bookingvscollection} = 8 then '8 min late'
  when ${bookingvscollection} = 9 then '9 min late'
  when ${bookingvscollection} = 10 then '10 min late'
  when ${bookingvscollection} = 11 then '11 min late'
  when ${bookingvscollection} = 12 then '12 min late'
  when ${bookingvscollection} = 13 then '13 min late'
  when ${bookingvscollection} = 14 then '14 min late'
  when ${bookingvscollection} = 15 then '15 min late'
  when ${bookingvscollection} = 16 then '16 min late'
  when ${bookingvscollection} = 17 then '17 min late'
  when ${bookingvscollection} = 18 then '18 min late'
  when ${bookingvscollection} = 19 then '19 min late'
  when ${bookingvscollection} = 20 then '20 min late'
  when ${bookingvscollection} = 21 then '21 min late'
  when ${bookingvscollection} = 22 then '22 min late'
  when ${bookingvscollection} = 23 then '23 min late'
  when ${bookingvscollection} = 24 then '24 min late'
  when ${bookingvscollection} = 25 then '25 min late'
  when ${bookingvscollection} = 26 then '26 min late'
  when ${bookingvscollection} = 27 then '27 min late'
  when ${bookingvscollection} = 28 then '28 min late'
  when ${bookingvscollection} = 29 then '29 min late'
  when ${bookingvscollection} = 30 then '30 min late'
  when ${bookingvscollection} = 31 then '31 min late'
  when ${bookingvscollection} = 32 then '32 min late'
  when ${bookingvscollection} = 33 then '33 min late'
  when ${bookingvscollection} = 34 then '34 min late'
  when ${bookingvscollection} = 35 then '35 min late'
  when ${bookingvscollection} = 36 then '36 min late'
  when ${bookingvscollection} = 37 then '37 min late'
  when ${bookingvscollection} = 38 then '38 min late'
  when ${bookingvscollection} = 39 then '39 min late'
  when ${bookingvscollection} = 40 then '40 min late'
  when ${bookingvscollection} = 41 then '41 min late'
  when ${bookingvscollection} = 42 then '42 min late'
  when ${bookingvscollection} = 43 then '43 min late'
  when ${bookingvscollection} = 44 then '44 min late'
  when ${bookingvscollection} = 45 then '45 min late'
  when ${bookingvscollection} >45 then '46+ min late'
  else 'other' end
  ;;


}


  dimension: bookingvscollectioncategory2 {


    type:  string
    sql:

        case
      when ${bookingvscollection} is null then 'not allocated/not picked-up'
      when ${bookingvscollection} = 0 then 'on time'
      when ${bookingvscollection} >= 1    and ${bookingvscollection} <= 30   then '30 min or less are late'
      when ${bookingvscollection} <= -1   and ${bookingvscollection} >= -30  then '30 min or less are early'
      when ${bookingvscollection} >= 1    and ${bookingvscollection} <= 60   then '60 min or less are late'
      when ${bookingvscollection} <= -1   and ${bookingvscollection} >= -60  then '60 min or less are early'
      when ${bookingvscollection} > 60 then '60 min plus are late'
      when ${bookingvscollection} < -60 then '60 min plus are early'





      --when ${bookingvscollection} >= 60   and ${bookingvscollection} <= 75   then '60-75 min late'
      --when ${bookingvscollection} <= -60  and ${bookingvscollection} >= -75  then '60-75 min early'
      --when ${bookingvscollection} >= 75   and ${bookingvscollection} <= 90   then '75-90 min late'
      --when ${bookingvscollection} <= -75  and ${bookingvscollection} >= -90  then '75-90 min early'
      --when ${bookingvscollection} >= 90   and ${bookingvscollection} <= 105  then '90-105 min late'
      --when ${bookingvscollection} <= -90  and ${bookingvscollection} >= -105 then '90-105 min early'
      --when ${bookingvscollection} >= 105  and ${bookingvscollection} <= 120  then '105-120 min late'
      --when ${bookingvscollection} <= -105 and ${bookingvscollection} >= -120 then '105-120 min early'
      --when ${bookingvscollection} >= 120  and ${bookingvscollection} <= 135  then '120-135 min late'
      --when ${bookingvscollection} <= -120 and ${bookingvscollection} >= -135 then '120-135 min early'
      --when ${bookingvscollection} >= 135  and ${bookingvscollection} <= 150  then '135-150 min late'
      --when ${bookingvscollection} <= -135 and ${bookingvscollection} >= -150 then '135-150 min early'
      --when ${bookingvscollection} >= 150  and ${bookingvscollection} <= 165  then '150-165 min late'
      --when ${bookingvscollection} <= -150 and ${bookingvscollection} >= -165 then '150-165 min early'
      --when ${bookingvscollection} >= 165  and ${bookingvscollection} <= 180  then '165-180 min late'
      --when ${bookingvscollection} <= -165 and ${bookingvscollection} >= -180 then '165-180 min early'
      --when ${bookingvscollection} >= 180  and ${bookingvscollection} <= 195  then '180-195 min late'
      --when ${bookingvscollection} <= -180 and ${bookingvscollection} >= -195 then '180-195 min early'
      --when ${bookingvscollection} >= 195  and ${bookingvscollection} <= 210  then '195-210 min late'
      --when ${bookingvscollection} <= -195 and ${bookingvscollection} >= -210 then '195-210 min early'
      --when ${bookingvscollection} > 210  then '210+ min late'
      --when ${bookingvscollection} <-210  then '210+ min early'
      else 'other' end
      ;;


    }



  dimension: caller {
    type: string
    sql: ${TABLE}."CALLER" ;;
  }

  dimension: caller_email {
    type: string
    sql: ${TABLE}."CALLER_EMAIL" ;;
  }

  dimension: caller_phone {
    type: string
    sql: ${TABLE}."CALLER_PHONE" ;;
  }

  dimension: caller_phone_2 {
    type: string
    sql: ${TABLE}."CALLER_PHONE_2" ;;
  }

  dimension: circuit {
    type: string
    sql: ${TABLE}."CIRCUIT" ;;
  }

  dimension: citytrak_status {
    type: string
    sql: ${TABLE}."CITYTRAK_STATUS" ;;
  }

  dimension: col {
    type: string
    sql: ${TABLE}."COL" ;;
  }


  dimension: collection_zone {
    map_layer_name: uk_postcode_areas
    sql: CASE WHEN SUBSTRING(${col}, 2, 1) IN ('0','1','2','3','4','5','6','7','8','9')
         THEN UPPER(LEFT(${col}, 1))
         ELSE UPPER(LEFT(${col}, 2)) END ;;
  }


dimension: coll_zone {
  type: string
  sql: rtrim(ltrim(LEFT(${col}, CASE WHEN charindex(' ', ${col}) = 0 THEN length(${col}) ELSE charindex(' ', ${col}) - 1 END))) ;;
}



  dimension_group: collect_by {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."COLLECT_BY" ;;
  }

  dimension: core_amount {
    type: number
    value_format_name: gbp_format
    sql: ${TABLE}."CORE_AMOUNT" ;;
  }

  dimension: cosmo_active_jobs {
    type: string
    sql: ${TABLE}."COSMO_ACTIVE_JOBS" ;;
  }

  dimension: cosmo_status {
    type: string
    sql: ${TABLE}."COSMO_STATUS" ;;
  }

  dimension: customer_attributes {
    type: string
    sql: ${TABLE}."CUSTOMER_ATTRIBUTES" ;;
  }

  dimension: customer_enabled {
    type: string
    sql: ${TABLE}."CUSTOMER_ENABLED" ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  dimension: customer_status_code {
    type: string
    sql: ${TABLE}."CUSTOMER_STATUS_CODE" ;;
  }

  dimension: customer_status_desc {
    type: string
    sql: ${TABLE}."CUSTOMER_STATUS_DESC" ;;
  }

  dimension: del {
    type: string
    sql: ${TABLE}."DEL" ;;
  }

  dimension_group: deliver_by {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DELIVER_BY" ;;
  }

  dimension_group: deliver {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DELIVER_DATE" ;;
  }

  dimension: delivery_status {
    type: string
    sql: ${TABLE}."DELIVERY_STATUS" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: driver_amount {
    type: number
    value_format_name: gbp_format
    sql: ${TABLE}."DRIVER_AMOUNT" ;;
  }

  dimension: driver_circuit_code {
    type: string
    sql: ${TABLE}."DRIVER_CIRCUIT_CODE" ;;
  }

  dimension: driver_circuit_desc {
    type: string
    sql: ${TABLE}."DRIVER_CIRCUIT_DESC" ;;
  }

  dimension: driver_enabled {
    type: string
    sql: ${TABLE}."DRIVER_ENABLED" ;;
  }

  dimension: driver_id {
    type: string
    sql: ${TABLE}."DRIVER_ID" ;;
  }

  dimension: driver_name {
    type: string
    sql: ${TABLE}."DRIVER_NAME" ;;
  }

  dimension: driver_postcode {
    type: string
    sql: ${TABLE}."DRIVER_POSTCODE" ;;
  }

  dimension: driver_status {
    type: string
    sql: ${TABLE}."DRIVER_STATUS" ;;
  }

  dimension: fuel_levy_amount {
    type: number
    value_format_name: gbp_format
    sql: ${TABLE}."FUEL_LEVY_AMOUNT" ;;
  }

  dimension: job_circuit_desc {
    type: string
    sql: ${TABLE}."JOB_CIRCUIT_DESC" ;;
  }

  dimension: job_codes {
    type: string
    sql: ${TABLE}."JOB_CODES" ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}."JOB_NUMBER" ;;
  }

  dimension: job_status {
    type: string
    sql: ${TABLE}."JOB_STATUS" ;;
  }

  dimension: job_status_desc {
    type: string
    sql: ${TABLE}."JOB_STATUS_DESC" ;;
  }

  dimension: job_stop_count {
    type: string
    sql: ${TABLE}."JOB_STOP_COUNT" ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}."KEY" ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}."MOBILE" ;;
  }

  dimension: operator_email {
    type: string
    sql: ${TABLE}."OPERATOR_EMAIL" ;;
  }

  dimension: operator_name {
    type: string
    sql: ${TABLE}."OPERATOR_NAME" ;;
  }

  dimension: operator_phone {
    type: string
    sql: ${TABLE}."OPERATOR_PHONE" ;;
  }

  dimension: operator_phone_2 {
    type: string
    sql: ${TABLE}."OPERATOR_PHONE_2" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension_group: pickup {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."PICKUP_DATE" ;;
  }

  dimension: pickup_delay {
    type: string
    sql: ${TABLE}."PICKUP_DELAY" ;;
  }

  dimension: pin_code {
    type: string
    sql: ${TABLE}."PIN_CODE" ;;
  }

  dimension: prebooked {
    type: string
    sql: ${TABLE}."PREBOOKED" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."REFERENCE" ;;
  }

  dimension: rego_number {
    type: string
    sql: ${TABLE}."REGO_NUMBER" ;;
  }

  dimension: service_code {
    type: string
    sql: ${TABLE}."SERVICE_CODE" ;;
  }

  dimension: service_group {
    type: string
    sql: ${TABLE}."SERVICE_GROUP" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: tagged_driver_id {
    type: string
    sql: ${TABLE}."TAGGED_DRIVER_ID" ;;
  }

  dimension: total_exc_amount {
    type: number
    value_format_name: gbp_format
    sql: ${TABLE}."TOTAL_EXC_AMOUNT" ;;
  }

  dimension: total_inc_amount {
    type: number
    value_format_name: gbp_format
    sql: ${TABLE}."TOTAL_INC_AMOUNT" ;;
  }

  dimension: vat_amount {
    type: number
    value_format_name: gbp_format
    sql: ${TABLE}."VAT_AMOUNT" ;;
  }

  dimension: vehicle_code {
    type: string
    sql: ${TABLE}."VEHICLE_CODE" ;;
  }


  dimension: job_circuit_code {
    type: string
    sql: ${TABLE}."JOB_CIRCUIT_CODE" ;;
  }


  dimension: vehicle_colour {
    type: string
    sql: ${TABLE}."VEHICLE_COLOUR" ;;
  }

  dimension: vehicle_make {
    type: string
    sql: ${TABLE}."VEHICLE_MAKE" ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}."VEHICLE_TYPE" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."VERSION" ;;
  }


  dimension: picked_up_in_the_past_15_min {
    type: string
    sql:
    case when date_trunc('minute',to_time(pickup_date)) between dateadd(minutes,-15,date_trunc('minute',current_time())) and date_trunc('minute',current_time()) then 'yes' else 'no' end  ;;
  }

  dimension: picked_up_in_the_past_25_min {
    type: string
    sql:
    case when date_trunc('minute',to_time(pickup_date)) between dateadd(minutes,-25,date_trunc('minute',current_time())) and date_trunc('minute',current_time()) then 'yes' else 'no' end  ;;
  }

  dimension: picked_up_in_the_past_35_min {
    type: string
    sql:
    case when date_trunc('minute',to_time(pickup_date)) between dateadd(minutes,-35,date_trunc('minute',current_time())) and date_trunc('minute',current_time()) then 'yes' else 'no' end  ;;
  }

  dimension: picked_up_in_the_past_45_min {
    type: string
    sql:
    case when date_trunc('minute',to_time(pickup_date)) between dateadd(minutes,-45,date_trunc('minute',current_time())) and date_trunc('minute',current_time()) then 'yes' else 'no' end  ;;
  }

  dimension: picked_up_in_the_past_60_min {
    type: string
    sql:
    case when date_trunc('minute',to_time(pickup_date)) between dateadd(minutes,-60,date_trunc('minute',current_time())) and date_trunc('minute',current_time()) then 'yes' else 'no' end  ;;
  }


  dimension: picked_up_in_the_past_120_min {
    type: string
    sql:
    case when date_trunc('minute',to_time(pickup_date)) between dateadd(minutes,-120,date_trunc('minute',current_time())) and date_trunc('minute',current_time()) then 'yes' else 'no' end  ;;
  }



  measure: count {
    type: count
    drill_fields: [drilldown*]
  }


measure: avgofbookingvscollectionmin {
  label: "Avg_Bookings_vs_Collection_Minutes"

  type: average
  sql: ${bookingvscollection} ;;
  drill_fields: [drilldown*]

}


measure: avg_collection_minutes {
  type: number
  sql: round(${avgofbookingvscollectionmin},1) ;;
  value_format: "#,##0"
  drill_fields: [drilldown*]

}




  set:drilldown {

    fields: [job_number,customer_key, customer_name,booking_time, pickup_time,bookingvscollection, driver_id, job_status_desc, status, service_code, service_derived_tbl.description,vehicle_code,vehicle_derived_tbl.vehicle_desc,service_derived_tbl.vanandbike, ut_returnjourneysfreq.sc, col, coll_zone, london_zones.zone]

  }


}
