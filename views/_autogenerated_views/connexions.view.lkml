view: connexions {
  sql_table_name: "PUBLIC"."CONNEXIONS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension_group: dateconnexion {
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
    sql: ${TABLE}."DATECONNEXION" ;;
  }

  dimension_group: datefirstconnexion {
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
    sql: ${TABLE}."DATEFIRSTCONNEXION" ;;
  }

  dimension_group: datelastconnexion {
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
    sql: ${TABLE}."DATELASTCONNEXION" ;;
  }

  dimension: organisme {
    type: string
    sql: ${TABLE}."ORGANISME" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."ORIGIN" ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}."PARTNER" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
