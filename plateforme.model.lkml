connection: "plateforme"

include: "/explores/*.explore.lkml"

datagroup: plateforme_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: plateforme_default_datagroup
