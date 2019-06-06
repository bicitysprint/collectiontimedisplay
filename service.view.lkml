view: service_derived_tbl {

derived_table:   {

  sql:

  select code, description from cc.service
where archive = (select max(archive) from cc.service)

  ;;



}


  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;

  }



  dimension: code {
    type: string
    sql: ${TABLE}."CODE" ;;
  }

  dimension: vanandbike {
    type: string
    sql: case when ${description} like '%bike%' then 'Bike' else 'Van' end ;;


  }



}
