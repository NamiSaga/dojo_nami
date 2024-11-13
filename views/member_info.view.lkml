view: member_info {
  drill_fields: [customer_id]
   derived_table: {
     sql:
       SELECT
         *
       FROM
        "DATA_SETS"."Member_Info"
       WHERE
        {% condition filter_birthday %} TO_DATE("Birthday", "YYYY/MM/DD") {% endcondition %};;
   }

  filter: filter_birthday {
    type: date
  }
  dimension: birthday {
    type: string
    sql: ${TABLE}."Birthday" ;;
  }
  dimension: customer_city {
    type: string
    sql: ${TABLE}."Customer_City" ;;
  }
  dimension: customer_id {
    type: number
    sql: ${TABLE}."Customer_ID" ;;
  }
  dimension: customer_prefecture {
    type: string
    sql: ${TABLE}."Customer_Prefecture" ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}."Gender" ;;
  }
  dimension: member_registration_date {
    type: string
    sql: ${TABLE}."Member_Registration_Date" ;;
  }
  dimension: number_of_members {
    type: number
    sql: ${TABLE}."Number_of_Members" ;;
  }
  measure: count {
    type: count
  }
  measure: member_amount {
    type: sum
    label: "合計会員数"
    sql: abs(${TABLE}."Number_of_Members") ;;
  }

  measure: female_members {
    type: sum
    label: "女性会員数"
    sql: CASE WHEN ${TABLE}."Gender"='女性' THEN ${TABLE}."Number_of_Members" ELSE 0 END ;;
  }

  measure: male_members {
    type: sum
    label: "男性会員数"
    sql: CASE WHEN ${TABLE}."Gender"="男性" THEN ${TABLE}."Number_of_Members" ELSE 0 END ;;
  }
}
