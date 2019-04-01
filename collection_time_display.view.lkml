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
    type: string
    sql: ${TABLE}."CORE_AMOUNT" ;;
  }

  dimension: customer_attributes {
    type: string
    sql: ${TABLE}."CUSTOMER_ATTRIBUTES" ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
  }

  dimension: customer_status_code {
    type: string
    sql: ${TABLE}."CUSTOMER_STATUS_CODE" ;;
  }

  dimension: customer_status_desc {
    type: string
    sql: ${TABLE}."CUSTOMER_STATUS_DESC" ;;
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
    type: string
    sql: ${TABLE}."DRIVER_AMOUNT" ;;
  }

  dimension: driver_id {
    type: string
    sql: ${TABLE}."DRIVER_ID" ;;
  }

  dimension: fuel_levy_amount {
    type: string
    sql: ${TABLE}."FUEL_LEVY_AMOUNT" ;;
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
    type: string
    sql: ${TABLE}."TOTAL_EXC_AMOUNT" ;;
  }

  dimension: total_inc_amount {
    type: string
    sql: ${TABLE}."TOTAL_INC_AMOUNT" ;;
  }

  dimension: vat_amount {
    type: string
    sql: ${TABLE}."VAT_AMOUNT" ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}."VEHICLE_TYPE" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [operator_name]
  }
}
