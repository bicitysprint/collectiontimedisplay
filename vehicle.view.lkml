view: vehicle_derived_tbl {

  derived_table:   {

    sql:

select
vehicle_code,
vehicle_desc
from cc.vehicle
where archive = (select max(archive) from cc.vehicle)

      ;;



    }


    dimension: vehicle_desc {
      type: string
      sql: ${TABLE}."VEHICLE_DESC" ;;

    }



    dimension: vehicle_code {
      type: string
      sql: ${TABLE}."VEHICLE_CODE" ;;
    }



  }
