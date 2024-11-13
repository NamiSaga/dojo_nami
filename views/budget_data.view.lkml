view: budget_data {
  sql_table_name: "DATA_SETS"."Budget_Data" ;;
  drill_fields: [store_id]

  dimension: budget_amount {
    type: number
    label: "予算額"
    sql: ${TABLE}."Budget_Amount" ;;
  }
  dimension: budget_year {
    type: string
    label: "予算年"
    sql: ${TABLE}."Budget_Year" ;;
  }
  dimension: store_id {
    primary_key: yes
    type: string
    label: "店舗ID"
    sql: ${TABLE}."Store_ID" ;;
  }
  measure: count {
    type: count
  }
}
