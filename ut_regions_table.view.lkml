view: ut_regions_table {
  sql_table_name: CC.UT_REGIONS_TABLE ;;

  dimension: group {
    label: "SC Group"
    type: string
    sql: ${TABLE}."GROUP" ;;
  }

  dimension: grouped_name {
    label: "SC"
    type: string
    sql: ${TABLE}."GROUPED_NAME" ;;
  }

  dimension: radio_freq {
    hidden: yes
    type: string
    sql: ${TABLE}."RADIO_FREQ" ;;
  }

  dimension: region {
    label: "Region"
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: sales_code_d {
    primary_key: yes
    type: string
    sql: ${TABLE}."SALES_CODE_D" ;;
  }

  dimension: sales_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}."SALES_CODE_DESC" ;;
  }

  dimension: split {
    label: "Split"
    type: string
    sql: ${TABLE}."SPLIT" ;;
  }

  dimension: ss_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."SS_FLAG" ;;
  }

  measure: count {
    type: count
    drill_fields: [grouped_name]
  }
}
