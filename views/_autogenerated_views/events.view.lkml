view: events {
  sql_table_name: "PUBLIC"."EVENTS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}."AGE" ;;
  }

  dimension: arrettravail {
    type: number
    sql: ${TABLE}."ARRETTRAVAIL" ;;
  }

  dimension: certificatenfantmalade {
    type: number
    sql: ${TABLE}."CERTIFICATENFANTMALADE" ;;
  }

  dimension: cim10 {
    type: string
    sql: ${TABLE}."CIM10" ;;
  }

  dimension_group: dateanswer {
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
    sql: ${TABLE}."DATEANSWER" ;;
  }

  dimension_group: datearchived {
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
    sql: ${TABLE}."DATEARCHIVED" ;;
  }

  dimension_group: datelastwaitclick {
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
    sql: ${TABLE}."DATELASTWAITCLICK" ;;
  }

  dimension_group: datequestion {
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
    sql: ${TABLE}."DATEQUESTION" ;;
  }

  dimension_group: daterejected {
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
    sql: ${TABLE}."DATEREJECTED" ;;
  }

  dimension_group: datetaken {
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
    sql: ${TABLE}."DATETAKEN" ;;
  }

  dimension: doctoremail {
    type: string
    sql: ${TABLE}."DOCTOREMAIL" ;;
  }

  dimension: doctorfirstname {
    type: string
    sql: ${TABLE}."DOCTORFIRSTNAME" ;;
  }

  dimension: doctorlastname {
    type: string
    sql: ${TABLE}."DOCTORLASTNAME" ;;
  }

  dimension: duree {
    type: number
    sql: ${TABLE}."DUREE" ;;
  }

  dimension: dureeattente {
    type: number
    sql: ${TABLE}."DUREEATTENTE" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: montantcommission {
    type: number
    sql: ${TABLE}."MONTANTCOMMISSION" ;;
  }

  dimension: ordonnance {
    type: number
    sql: ${TABLE}."ORDONNANCE" ;;
  }

  dimension: ordonnancemedic {
    type: number
    sql: ${TABLE}."ORDONNANCEMEDIC" ;;
  }

  dimension: ordonnancenonmedic {
    type: number
    sql: ${TABLE}."ORDONNANCENONMEDIC" ;;
  }

  dimension: organisme {
    type: string
    sql: ${TABLE}."ORGANISME" ;;
  }

  dimension: organismedptcode {
    type: string
    sql: ${TABLE}."ORGANISMEDPTCODE" ;;
  }

  dimension: organismelatitude {
    type: string
    sql: ${TABLE}."ORGANISMELATITUDE" ;;
  }

  dimension: organismelongitude {
    type: string
    sql: ${TABLE}."ORGANISMELONGITUDE" ;;
  }

  dimension: organismepays {
    type: string
    sql: ${TABLE}."ORGANISMEPAYS" ;;
  }

  dimension: organismeregion {
    type: string
    sql: ${TABLE}."ORGANISMEREGION" ;;
  }

  dimension: organismeregioncode {
    type: string
    sql: ${TABLE}."ORGANISMEREGIONCODE" ;;
  }

  dimension: organismezipcode {
    type: string
    sql: ${TABLE}."ORGANISMEZIPCODE" ;;
  }

  dimension: originconnexion {
    type: string
    sql: ${TABLE}."ORIGINCONNEXION" ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}."PARTNER" ;;
  }

  dimension: pathologies {
    type: string
    sql: ${TABLE}."PATHOLOGIES" ;;
  }

  dimension: patientdptcode {
    type: string
    sql: ${TABLE}."PATIENTDPTCODE" ;;
  }

  dimension: patientlatitude {
    type: string
    sql: ${TABLE}."PATIENTLATITUDE" ;;
  }

  dimension: patientlongitude {
    type: string
    sql: ${TABLE}."PATIENTLONGITUDE" ;;
  }

  dimension: patientregioncode {
    type: string
    sql: ${TABLE}."PATIENTREGIONCODE" ;;
  }

  dimension: patientuserid {
    type: string
    sql: ${TABLE}."PATIENTUSERID" ;;
  }

  dimension: patientzipcode {
    type: string
    sql: ${TABLE}."PATIENTZIPCODE" ;;
  }

  dimension: ratevalue {
    type: number
    sql: ${TABLE}."RATEVALUE" ;;
  }

  dimension: skipvisitdoctorvalue {
    type: number
    sql: ${TABLE}."SKIPVISITDOCTORVALUE" ;;
  }

  dimension: specialitedemandee {
    type: string
    sql: ${TABLE}."SPECIALITEDEMANDEE" ;;
  }

  dimension: specprincipaleps {
    type: string
    sql: ${TABLE}."SPECPRINCIPALEPS" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: statuscontext {
    type: string
    sql: ${TABLE}."STATUSCONTEXT" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: typeevents {
    type: string
    sql: ${TABLE}."TYPEEVENTS" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, doctorfirstname, doctorlastname]
  }
}
