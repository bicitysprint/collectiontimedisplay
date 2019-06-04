view: radfreq {
  sql_table_name: CC.RADFREQ ;;

  dimension: alloc_job_limit {
    hidden: yes
    type: number
    sql: ${TABLE}."ALLOC_JOB_LIMIT" ;;
  }

  dimension: amt_1 {
    hidden: yes
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: bidding_delay {
    hidden: yes
    type: number
    sql: ${TABLE}."BIDDING_DELAY" ;;
  }

  dimension: bidding_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."BIDDING_FLAG" ;;
  }

  dimension: bidding_label {
    hidden: yes
    type: string
    sql: ${TABLE}."BIDDING_LABEL" ;;
  }

  dimension: booked_job_limit {
    hidden: yes
    type: number
    sql: ${TABLE}."BOOKED_JOB_LIMIT" ;;
  }

  dimension: change_freq {
    hidden: yes
    type: string
    sql: ${TABLE}."CHANGE_FREQ" ;;
  }

  dimension: cust_mess_dest {
    hidden: yes
    type: number
    sql: ${TABLE}."CUST_MESS_DEST" ;;
  }

  dimension: despatch_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."DESPATCH_FLAG" ;;
  }

  dimension: dtm_auto_desp {
    hidden: yes
    type: string
    sql: ${TABLE}."DTM_AUTO_DESP" ;;
  }

  dimension: dtm_freq_type {
    hidden: yes
    type: string
    sql: ${TABLE}."DTM_FREQ_TYPE" ;;
  }

  dimension: email_address {
    hidden: yes
    type: string
    sql: ${TABLE}."EMAIL_ADDRESS" ;;
  }

  dimension: flag_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_1" ;;
  }

  dimension: flag_2 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_2" ;;
  }

  dimension: float_1 {
    hidden: yes
    type: number
    sql: ${TABLE}."FLOAT_1" ;;
  }

  dimension: freq_alias {
    hidden: yes
    type: string
    sql: ${TABLE}."FREQ_ALIAS" ;;
  }

  dimension: frequency_desc {

    type: string
    sql: ${TABLE}."FREQUENCY_DESC" ;;
  }

  dimension: mte_qid {
    hidden: yes
    type: string
    sql: ${TABLE}."MTE_QID" ;;
  }

  dimension: mte_retry_limit {
    hidden: yes
    type: number
    sql: ${TABLE}."MTE_RETRY_LIMIT" ;;
  }

  dimension: mte_status {
    hidden: yes
    type: string
    sql: ${TABLE}."MTE_STATUS" ;;
  }

  dimension: num_1 {
    hidden: yes
    type: number
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: prepaid_driver {
    hidden: yes
    type: string
    sql: ${TABLE}."PREPAID_DRIVER" ;;
  }

  dimension: printer_number {
    hidden: yes
    type: number
    sql: ${TABLE}."PRINTER_NUMBER" ;;
  }

  dimension: radio_area {
    hidden: yes
    type: string
    sql: ${TABLE}."RADIO_AREA" ;;
  }

  dimension: radio_freq_code {
    type: string
    sql: ${TABLE}."RADIO_FREQ_CODE" ;;
  }

  dimension: routing_option {
    hidden: yes
    type: string
    sql: ${TABLE}."ROUTING_OPTION" ;;
  }

  dimension: screen_number {
    hidden: yes
    type: number
    sql: ${TABLE}."SCREEN_NUMBER" ;;
  }

  dimension: screen_printer {
    hidden: yes
    type: string
    sql: ${TABLE}."SCREEN_PRINTER" ;;
  }

  dimension: undel_job_limit {
    hidden: yes
    type: number
    sql: ${TABLE}."UNDEL_JOB_LIMIT" ;;
  }

  dimension: update_driver {
    hidden: yes
    type: string
    sql: ${TABLE}."UPDATE_DRIVER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
