view: sales_data {
  derived_table: {
    sql:
      SELECT
       *
      FROM
      "DATA_SETS"."Sales_Data";;
  }

  dimension: cost_of_sales {
    type: string
    sql: ${TABLE}."Cost_of_Sales" ;;
  }
  dimension: customer_id {
    type: number
    sql: ${TABLE}."Customer_ID" ;;
  }
  dimension: gross_profit {
    type: string
    sql: ${TABLE}."Gross_Profit" ;;
  }
  dimension: order_date_key {
    type: number
    sql: ${TABLE}."Order_date_KEY" ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}."Product_ID" ;;
  }
  dimension: quantity {
    type: string
    sql: ${TABLE}."Quantity" ;;
  }
  dimension: sales {
    type: string
    sql: ${TABLE}."Sales" ;;
  }
  dimension: sales_date {
    type: string
    sql: ${TABLE}."Sales_Date" ;;
  }
  dimension: store_id {
    type: number
    sql: ${TABLE}."Store_ID" ;;
  }
  dimension: voucher_number {
    type: string
    sql: ${TABLE}."Voucher_Number" ;;
  }
  dimension: sales_comparison {
    type: yesno
    sql: ${TABLE}."Sales" >= 500 ;;
  }
  measure: count {
    type: count
  }
  measure: average_sales {
    type: average
    label: "平均売上額"
    value_format: "\"¥\"#,##0"
    sql: abs(${TABLE}."Sales") ;;
  }
}
