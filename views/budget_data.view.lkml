view: budget_data {
  drill_fields: [store_id]
  sql_table_name: "DATA_SETS"."Budget_Data" ;;

  dimension: budget_amount {
    type: number
    sql: ${TABLE}."Budget_Amount" ;;
  }
  dimension: budget_year {
    type: string
    sql: ${TABLE}."Budget_Year" ;;
  }
  dimension: store_id {
    type: string
    sql: ${TABLE}."Store_ID" ;;
  }
  measure: count {
    type: count
  }
}