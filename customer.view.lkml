view: customer {
  sql_table_name: CC.CUSTOMER ;;

  dimension: abn {
    type: string
    sql: ${TABLE}."ABN" ;;
  }

  dimension: acn_number {
    type: string
    sql: ${TABLE}."ACN_NUMBER" ;;
  }

  dimension: address_1 {
    type: string
    sql: ${TABLE}."ADDRESS_1" ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}."ADDRESS_2" ;;
  }

  dimension: agreement_no_1 {
    type: string
    sql: ${TABLE}."AGREEMENT_NO_1" ;;
  }

  dimension: agreement_no_2 {
    type: string
    sql: ${TABLE}."AGREEMENT_NO_2" ;;
  }

  dimension: amt_1 {
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: amt_2 {
    type: number
    sql: ${TABLE}."AMT_2" ;;
  }

  dimension: autotime_upd_flg {
    type: string
    sql: ${TABLE}."AUTOTIME_UPD_FLG" ;;
  }

  dimension: bank_account_no {
    type: string
    sql: ${TABLE}."BANK_ACCOUNT_NO" ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}."BANK_NAME" ;;
  }

  dimension: branch_name {
    type: string
    sql: ${TABLE}."BRANCH_NAME" ;;
  }

  dimension: brought_fwd_amt {
    type: number
    sql: ${TABLE}."BROUGHT_FWD_AMT" ;;
  }

  dimension: call_back_flag {
    type: string
    sql: ${TABLE}."CALL_BACK_FLAG" ;;
  }

  dimension: card_expiry {
    type: string
    sql: ${TABLE}."CARD_EXPIRY" ;;
  }

  dimension: card_name {
    type: string
    sql: ${TABLE}."CARD_NAME" ;;
  }

  dimension: card_number {
    type: string
    sql: ${TABLE}."CARD_NUMBER" ;;
  }

  dimension: card_type {
    type: string
    sql: ${TABLE}."CARD_TYPE" ;;
  }

  dimension: cash_account {
    type: string
    sql: ${TABLE}."CASH_ACCOUNT" ;;
  }

  dimension: cheque_drawer {
    type: string
    sql: ${TABLE}."CHEQUE_DRAWER" ;;
  }

  dimension: cod_account_flag {
    type: string
    sql: ${TABLE}."COD_ACCOUNT_FLAG" ;;
  }

  dimension: comp_name_flag {
    type: string
    sql: ${TABLE}."COMP_NAME_FLAG" ;;
  }

  dimension: con_note_flag {
    type: string
    sql: ${TABLE}."CON_NOTE_FLAG" ;;
  }

  dimension: cr_limit_period {
    type: string
    sql: ${TABLE}."CR_LIMIT_PERIOD" ;;
  }

  dimension: credit_card_flag {
    type: string
    sql: ${TABLE}."CREDIT_CARD_FLAG" ;;
  }

  dimension: credit_fee_flag {
    type: string
    sql: ${TABLE}."CREDIT_FEE_FLAG" ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}."CREDIT_LIMIT" ;;
  }

  dimension: current_flag {
    type: string
    sql: ${TABLE}."CURRENT_FLAG" ;;
  }

  dimension: cust_key {
    primary_key: yes
    type: string
    sql: ${TABLE}."CUST_KEY" ;;
  }

  dimension: customer_freq {
    type: string
    sql: ${TABLE}."CUSTOMER_FREQ" ;;
  }

  dimension_group: date_1 {
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
    sql: ${TABLE}."DATE_1" ;;
  }

  dimension: dde_account_code {
    type: number
    sql: ${TABLE}."DDE_ACCOUNT_CODE" ;;
  }

  dimension: dde_export_days {
    type: number
    sql: ${TABLE}."DDE_EXPORT_DAYS" ;;
  }

  dimension: del_time_flag {
    type: string
    sql: ${TABLE}."DEL_TIME_FLAG" ;;
  }

  dimension: delivery_suburb {
    type: string
    sql: ${TABLE}."DELIVERY_SUBURB" ;;
  }

  dimension: dept_flag {
    type: string
    sql: ${TABLE}."DEPT_FLAG" ;;
  }

  dimension: direct_debit {
    type: string
    sql: ${TABLE}."DIRECT_DEBIT" ;;
  }

  dimension: dtm_auto_desp {
    type: string
    sql: ${TABLE}."DTM_AUTO_DESP" ;;
  }

  dimension: dtm_cust_type {
    type: number
    sql: ${TABLE}."DTM_CUST_TYPE" ;;
  }

  dimension: dtm_time_perc {
    type: number
    sql: ${TABLE}."DTM_TIME_PERC" ;;
  }

  dimension: dtm_type_perc {
    type: number
    sql: ${TABLE}."DTM_TYPE_PERC" ;;
  }

  dimension: dtm_weave {
    type: string
    sql: ${TABLE}."DTM_WEAVE" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: email_2 {
    type: string
    sql: ${TABLE}."EMAIL_2" ;;
  }

  dimension: extra_charge {
    type: number
    sql: ${TABLE}."EXTRA_CHARGE" ;;
  }

  dimension: fax_flag {
    type: string
    sql: ${TABLE}."FAX_FLAG" ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}."FAX_NUMBER" ;;
  }

  dimension: flag_1 {
    type: string
    sql: ${TABLE}."FLAG_1" ;;
  }

  dimension: flag_2 {
    type: string
    sql: ${TABLE}."FLAG_2" ;;
  }

  dimension: flag_3 {
    type: string
    sql: ${TABLE}."FLAG_3" ;;
  }

  dimension: flag_4 {
    type: string
    sql: ${TABLE}."FLAG_4" ;;
  }

  dimension: flag_5 {
    type: string
    sql: ${TABLE}."FLAG_5" ;;
  }

  dimension: flag_6 {
    type: string
    sql: ${TABLE}."FLAG_6" ;;
  }

  dimension: flag_7 {
    type: string
    sql: ${TABLE}."FLAG_7" ;;
  }

  dimension: grid_offset_no {
    type: number
    sql: ${TABLE}."GRID_OFFSET_NO" ;;
  }

  dimension: ignore_flag {
    type: string
    sql: ${TABLE}."IGNORE_FLAG" ;;
  }

  dimension: ignore_serv_rule {
    type: string
    sql: ${TABLE}."IGNORE_SERV_RULE" ;;
  }

  dimension: importance_rate {
    type: number
    sql: ${TABLE}."IMPORTANCE_RATE" ;;
  }

  dimension: ind_sect_code {
    type: string
    sql: ${TABLE}."IND_SECT_CODE" ;;
  }

  dimension: ind_term_desc {
    type: string
    sql: ${TABLE}."IND_TERM_DESC" ;;
  }

  dimension: inv_grouping_flg {
    type: string
    sql: ${TABLE}."INV_GROUPING_FLG" ;;
  }

  dimension: invoice_type {
    type: string
    sql: ${TABLE}."INVOICE_TYPE" ;;
  }

  dimension: job_code_flag {
    type: string
    sql: ${TABLE}."JOB_CODE_FLAG" ;;
  }

  dimension: last_inv_amt {
    type: number
    sql: ${TABLE}."LAST_INV_AMT" ;;
  }

  dimension_group: last_inv {
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
    sql: ${TABLE}."LAST_INV_DATE" ;;
  }

  dimension: last_job_fsub {
    type: string
    sql: ${TABLE}."LAST_JOB_FSUB" ;;
  }

  dimension: last_job_serv {
    type: string
    sql: ${TABLE}."LAST_JOB_SERV" ;;
  }

  dimension: last_job_tsub {
    type: string
    sql: ${TABLE}."LAST_JOB_TSUB" ;;
  }

  dimension: last_jobno {
    type: number
    sql: ${TABLE}."LAST_JOBNO" ;;
  }

  dimension: last_period_cost {
    type: number
    sql: ${TABLE}."LAST_PERIOD_COST" ;;
  }

  dimension: last_period_sale {
    type: number
    sql: ${TABLE}."LAST_PERIOD_SALE" ;;
  }

  dimension_group: last_rate_review {
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
    sql: ${TABLE}."LAST_RATE_REVIEW" ;;
  }

  dimension: last_recpt_amt {
    type: number
    sql: ${TABLE}."LAST_RECPT_AMT" ;;
  }

  dimension_group: last_recpt {
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
    sql: ${TABLE}."LAST_RECPT_DATE" ;;
  }

  dimension: mandatory_addr {
    type: string
    sql: ${TABLE}."MANDATORY_ADDR" ;;
  }

  dimension: mandatory_cv2 {
    type: string
    sql: ${TABLE}."MANDATORY_CV2" ;;
  }

  dimension: mandatory_pcode {
    type: string
    sql: ${TABLE}."MANDATORY_PCODE" ;;
  }

  dimension: mc_flag {
    type: string
    sql: ${TABLE}."MC_FLAG" ;;
  }

  dimension_group: membership_expir {
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
    sql: ${TABLE}."MEMBERSHIP_EXPIR" ;;
  }

  dimension: min_usage_amount {
    type: number
    sql: ${TABLE}."MIN_USAGE_AMOUNT" ;;
  }

  dimension: min_usage_fee {
    type: number
    sql: ${TABLE}."MIN_USAGE_FEE" ;;
  }

  dimension: mub_ex_flag {
    type: string
    sql: ${TABLE}."MUB_EX_FLAG" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension_group: next_rate_review {
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
    sql: ${TABLE}."NEXT_RATE_REVIEW" ;;
  }

  dimension: notify {
    type: string
    sql: ${TABLE}."NOTIFY" ;;
  }

  dimension: num_1 {
    type: number
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: num_2 {
    type: number
    sql: ${TABLE}."NUM_2" ;;
  }

  dimension: osf_ex_flag {
    type: string
    sql: ${TABLE}."OSF_EX_FLAG" ;;
  }

  dimension: override_colour {
    type: string
    sql: ${TABLE}."OVERRIDE_COLOUR" ;;
  }

  dimension: parent_company {
    type: string
    sql: ${TABLE}."PARENT_COMPANY" ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}."PAYMENT_TYPE" ;;
  }

  dimension: pb_override_col {
    type: string
    sql: ${TABLE}."PB_OVERRIDE_COL" ;;
  }

  dimension: period_amt_1 {
    type: number
    sql: ${TABLE}."PERIOD_AMT_1" ;;
  }

  dimension: period_amt_2 {
    type: number
    sql: ${TABLE}."PERIOD_AMT_2" ;;
  }

  dimension: period_amt_3 {
    type: number
    sql: ${TABLE}."PERIOD_AMT_3" ;;
  }

  dimension: period_amt_4 {
    type: number
    sql: ${TABLE}."PERIOD_AMT_4" ;;
  }

  dimension: period_amt_curr {
    type: number
    sql: ${TABLE}."PERIOD_AMT_CURR" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: pickup_contact {
    type: string
    sql: ${TABLE}."PICKUP_CONTACT" ;;
  }

  dimension: pickup_limit {
    type: number
    sql: ${TABLE}."PICKUP_LIMIT" ;;
  }

  dimension: pickup_suburb {
    type: string
    sql: ${TABLE}."PICKUP_SUBURB" ;;
  }

  dimension: pod_flag {
    type: string
    sql: ${TABLE}."POD_FLAG" ;;
  }

  dimension: postcode {
    type: number
    sql: ${TABLE}."POSTCODE" ;;
  }

  dimension: prepaid_freq {
    type: string
    sql: ${TABLE}."PREPAID_FREQ" ;;
  }

  dimension: print_comp_name {
    type: string
    sql: ${TABLE}."PRINT_COMP_NAME" ;;
  }

  dimension: prompt_pay_flag {
    type: string
    sql: ${TABLE}."PROMPT_PAY_FLAG" ;;
  }

  dimension: prompt_pay_perc {
    type: number
    sql: ${TABLE}."PROMPT_PAY_PERC" ;;
  }

  dimension: ptd_cost_amt {
    type: number
    sql: ${TABLE}."PTD_COST_AMT" ;;
  }

  dimension: ptd_sales_amt {
    type: number
    sql: ${TABLE}."PTD_SALES_AMT" ;;
  }

  dimension: rate_inc_flag {
    type: string
    sql: ${TABLE}."RATE_INC_FLAG" ;;
  }

  dimension: reference_no {
    type: string
    sql: ${TABLE}."REFERENCE_NO" ;;
  }

  dimension: rep_name {
    type: string
    sql: ${TABLE}."REP_NAME" ;;
  }

  dimension: req_job_code1 {
    type: string
    sql: ${TABLE}."REQ_JOB_CODE1" ;;
  }

  dimension: req_job_code2 {
    type: string
    sql: ${TABLE}."REQ_JOB_CODE2" ;;
  }

  dimension: req_job_code3 {
    type: string
    sql: ${TABLE}."REQ_JOB_CODE3" ;;
  }

  dimension: req_job_code4 {
    type: string
    sql: ${TABLE}."REQ_JOB_CODE4" ;;
  }

  dimension: req_job_code5 {
    type: string
    sql: ${TABLE}."REQ_JOB_CODE5" ;;
  }

  dimension: sales_code_a {
    type: string
    sql: ${TABLE}."SALES_CODE_A" ;;
  }

  dimension: sales_code_b {
    type: string
    sql: ${TABLE}."SALES_CODE_B" ;;
  }

  dimension: sales_code_c {
    type: string
    sql: ${TABLE}."SALES_CODE_C" ;;
  }

  dimension: sales_code_d {
    type: string
    sql: ${TABLE}."SALES_CODE_D" ;;
  }

  dimension: sales_code_e {
    type: string
    sql: ${TABLE}."SALES_CODE_E" ;;
  }

  dimension: sales_code_f {
    type: string
    sql: ${TABLE}."SALES_CODE_F" ;;
  }

  dimension: sales_code_g {
    type: string
    sql: ${TABLE}."SALES_CODE_G" ;;
  }

  dimension: sales_code_h {
    type: string
    sql: ${TABLE}."SALES_CODE_H" ;;
  }

  dimension: sales_disc {
    type: number
    sql: ${TABLE}."SALES_DISC" ;;
  }

  dimension: satchel_warn_lim {
    type: number
    sql: ${TABLE}."SATCHEL_WARN_LIM" ;;
  }

  dimension: screen_flag {
    type: string
    sql: ${TABLE}."SCREEN_FLAG" ;;
  }

  dimension: send_promo_mail {
    type: string
    sql: ${TABLE}."SEND_PROMO_MAIL" ;;
  }

  dimension: senior_accts_con {
    type: string
    sql: ${TABLE}."SENIOR_ACCTS_CON" ;;
  }

  dimension: serv_code_flag {
    type: string
    sql: ${TABLE}."SERV_CODE_FLAG" ;;
  }

  dimension: service_code {
    type: string
    sql: ${TABLE}."SERVICE_CODE" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension: statement_copies {
    type: number
    sql: ${TABLE}."STATEMENT_COPIES" ;;
  }

  dimension: statement_name {
    type: string
    sql: ${TABLE}."STATEMENT_NAME" ;;
  }

  dimension: statement_type {
    type: number
    sql: ${TABLE}."STATEMENT_TYPE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: stmt_sort_flag {
    type: string
    sql: ${TABLE}."STMT_SORT_FLAG" ;;
  }

  dimension: suspense_account {
    type: string
    sql: ${TABLE}."SUSPENSE_ACCOUNT" ;;
  }

  dimension: temp_current {
    type: number
    sql: ${TABLE}."TEMP_CURRENT" ;;
  }

  dimension: temp_ptd_cost {
    type: number
    sql: ${TABLE}."TEMP_PTD_COST" ;;
  }

  dimension: temp_ptd_sales {
    type: number
    sql: ${TABLE}."TEMP_PTD_SALES" ;;
  }

  dimension: term_reason {
    type: string
    sql: ${TABLE}."TERM_REASON" ;;
  }

  dimension_group: termination {
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
    sql: ${TABLE}."TERMINATION_DATE" ;;
  }

  dimension_group: time_1 {
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
    sql: ${TABLE}."TIME_1" ;;
  }

  dimension: trading_as_name {
    type: string
    sql: ${TABLE}."TRADING_AS_NAME" ;;
  }

  dimension: unallocated_amt {
    type: number
    sql: ${TABLE}."UNALLOCATED_AMT" ;;
  }

  dimension: xtra_charge_flag {
    type: string
    sql: ${TABLE}."XTRA_CHARGE_FLAG" ;;
  }

  dimension: ytd_cost_amt {
    type: number
    sql: ${TABLE}."YTD_COST_AMT" ;;
  }

  dimension: ytd_sales_amt {
    type: number
    sql: ${TABLE}."YTD_SALES_AMT" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      rep_name,
      statement_name,
      bank_name,
      branch_name,
      trading_as_name,
      print_comp_name,
      card_name
    ]
  }
}
