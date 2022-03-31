view: opportunity {
  sql_table_name: "RAW_SALESFORCE"."opportunity"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."AccountId" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."Amount" ;;
  }

  dimension: budget_confirmed__c {
    type: string
    sql: ${TABLE}."Budget_Confirmed__c" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."CampaignId" ;;
  }

  dimension_group: close_date {
    type: time
    convert_tz: yes
    datatype: date
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:  CAST(${TABLE}."CloseDate" as TIMESTAMP);;
  }

  dimension: contract_id {
    type: string
    sql: ${TABLE}."ContractId" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CreatedById" ;;
  }

  dimension_group: created_date {
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
    sql: ${TABLE}."CreatedDate" ;;
  }

  dimension_group: date_demarrage__c {
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
    sql: ${TABLE}."DateDemarrage__c" ;;
  }

  dimension_group: date_fin_contrat__c {
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
    sql: ${TABLE}."DateFinContrat__c" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."Description" ;;
  }

  dimension: discovery_completed__c {
    type: string
    sql: ${TABLE}."Discovery_Completed__c" ;;
  }

  dimension: discoverycomplete__c {
    type: string
    sql: ${TABLE}."Discoverycomplete__c" ;;
  }

  dimension: duree_engagement_mois__c {
    type: number
    sql: ${TABLE}."DureeEngagementMois__c" ;;
  }

  dimension: expected_revenue {
    type: number
    sql: ${TABLE}."ExpectedRevenue" ;;
  }

  dimension: fiscal {
    type: string
    sql: ${TABLE}."Fiscal" ;;
  }

  dimension: fiscal_quarter {
    type: string
    sql: ${TABLE}."FiscalQuarter" ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}."FiscalYear" ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}."ForecastCategory" ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}."ForecastCategoryName" ;;
  }

  dimension: has_open_activity {
    type: string
    sql: ${TABLE}."HasOpenActivity" ;;
  }

  dimension: has_opportunity_line_item {
    type: string
    sql: ${TABLE}."HasOpportunityLineItem" ;;
  }

  dimension: has_overdue_task {
    type: string
    sql: ${TABLE}."HasOverdueTask" ;;
  }

  dimension: is_closed {
    type: string
    sql: ${TABLE}."IsClosed" ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}."IsDeleted" ;;
  }

  dimension: is_won {
    type: string
    sql: ${TABLE}."IsWon" ;;
  }

  dimension_group: last_activity_date {
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
    sql: ${TABLE}."LastActivityDate" ;;
  }

  dimension_group: last_modified_by_id {
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
    sql: ${TABLE}."LastModifiedById" ;;
  }

  dimension_group: last_modified_date {
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
    sql: ${TABLE}."LastModifiedDate" ;;
  }

  dimension_group: last_referenced_date {
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
    sql: ${TABLE}."LastReferencedDate" ;;
  }


  dimension_group: last_viewed_date {
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
    sql: ${TABLE}."LastViewedDate" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LeadSource" ;;
  }

  dimension: lid__current_generators__c {
    type: string
    sql: ${TABLE}."LID__CurrentGenerators__c" ;;
  }

  dimension: lid__delivery_installation_status__c {
    type: string
    sql: ${TABLE}."LID__DeliveryInstallationStatus__c" ;;
  }

  dimension: lid__is_influenced__c {
    type: string
    sql: ${TABLE}."LID__Is_Influenced__c" ;;
  }

  dimension: lid__linked_in_company_id__c {
    type: string
    sql: ${TABLE}."LID__LinkedIn_Company_Id__c" ;;
  }

  dimension: lid__main_competitors__c {
    type: string
    sql: ${TABLE}."LID__MainCompetitors__c" ;;
  }

  dimension: lid__my_date_time__c {
    type: string
    sql: ${TABLE}."LID__My_DateTime__c" ;;
  }

  dimension: lid__my_geolocation__latitude__s {
    type: string
    sql: ${TABLE}."LID__My_Geolocation__Latitude__s" ;;
  }

  dimension: lid__my_geolocation__longitude__s {
    type: string
    sql: ${TABLE}."LID__My_Geolocation__Longitude__s" ;;
  }

  dimension: lid__order_number__c {
    type: string
    sql: ${TABLE}."LID__OrderNumber__c" ;;
  }

  dimension: lid__tracking_number__c {
    type: string
    sql: ${TABLE}."LID__TrackingNumber__c" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: next_step {
    type: string
    sql: ${TABLE}."NextStep" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: pricebook2_id {
    type: number
    sql: ${TABLE}."Pricebook2Id" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."Probability" ;;
  }

  dimension: produits_potentiels__c {
    type: string
    sql: ${TABLE}."ProduitsPotentiels__c" ;;
  }

  dimension: raison_perte__c {
    type: string
    sql: ${TABLE}."RaisonPerte__c" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RecordTypeId" ;;
  }

  dimension: roi_analysis_completed__c {
    type: string
    sql: ${TABLE}."ROI_Analysis_Completed__c" ;;
  }

  dimension: sans_engagement__c {
    type: string
    sql: ${TABLE}."SansEngagement__c" ;;
  }

  dimension: sbqq__amended_contract__c {
    type: string
    sql: ${TABLE}."SBQQ__AmendedContract__c" ;;
  }

  dimension: sbqq__contracted__c {
    type: string
    sql: ${TABLE}."SBQQ__Contracted__c" ;;
  }

  dimension: sbqq__create_contracted_prices__c {
    type: string
    sql: ${TABLE}."SBQQ__CreateContractedPrices__c" ;;
  }

  dimension: sbqq__order_group_id__c {
    type: string
    sql: ${TABLE}."SBQQ__OrderGroupID__c" ;;
  }

  dimension: sbqq__ordered__c {
    type: string
    sql: ${TABLE}."SBQQ__Ordered__c" ;;
  }

  dimension: sbqq__primary_quote__c {
    type: string
    sql: ${TABLE}."SBQQ__PrimaryQuote__c" ;;
  }

  dimension: sbqq__quote_pricebook_id__c {
    type: string
    sql: ${TABLE}."SBQQ__QuotePricebookId__c" ;;
  }

  dimension: sbqq__renewal__c {
    type: string
    sql: ${TABLE}."SBQQ__Renewal__c" ;;
  }

  dimension: sbqq__renewed_contract__c {
    type: string
    sql: ${TABLE}."SBQQ__RenewedContract__c" ;;
  }

  dimension: secteur_activite__c {
    type: string
    sql: ${TABLE}."SecteurActivite__c" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."StageName" ;;
  }

  dimension: synced_quote_id {
    type: string
    sql: ${TABLE}."SyncedQuoteId" ;;
  }

  dimension: system_modstamp {
    type: string
    sql: ${TABLE}."SystemModstamp" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."Type" ;;
  }

  dimension: pipeline_pondere {
    type: number
  sql:(${opportunity.probability}*${opportunity.amount})/100;;
  }

  measure: count {
    type: count
    drill_fields: [id, stage_name, name, forecast_category_name]
  }
}
