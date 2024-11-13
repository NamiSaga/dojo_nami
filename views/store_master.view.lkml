view: store_master {
  derived_table: {
    sql:
      SELECT
       *
      FROM
      "DATA_SETS"."Store_Master"
      WHERE
      "Store_Area" = {% parameter parameter_area %};;
  }
  parameter: parameter_area {
    label: "店舗エリア（フィルター用）"
    type: string
    suggestions: ["東日本", "西日本"]
    suggest_dimension: store_area
  }
  filter: select_store_category {
    label: "店舗区分"
    type: string
    suggest_dimension: store_category
  }
  dimension: area_id {
    type: string
    label: "エリアID"
    sql: ${TABLE}."Area_ID" ;;
  }
  dimension: area_of_frozen_food_department {
    type: number
    label: "冷凍食品部門"
    sql: ${TABLE}."Area_of_Frozen_Food_Department" ;;
  }
  dimension: area_of_grocery_department {
    type: number
    label: "食料品部門"
    sql: ${TABLE}."Area_of_grocery_department" ;;
  }
  dimension: coffee_bar {
    type: number
    label: "カフェバー部門"
    sql: ${TABLE}."Coffee_Bar" ;;
  }
  dimension: delicatessen {
    type: number
    label: "デリカテッセン部門"
    sql: ${TABLE}."Delicatessen" ;;
  }
  dimension: fax_number_store {
    type: string
    label: "店舗FAX番号"
    sql: ${TABLE}."Fax_Number_Store" ;;
  }
  dimension: flower_shop {
    type: number
    label: "花屋"
    sql: ${TABLE}."Flower_shop" ;;
  }
  dimension: last_remodeling_date {
    type: string
    label: "最終更新日付"
    sql: ${TABLE}."Last_Remodeling_Date" ;;
  }
  dimension: latitude {
    type: number
    label: "緯度"
    sql: ${TABLE}."Latitude" ;;
  }
  dimension: longitude {
    type: number
    label: "経度"
    sql: ${TABLE}."Longitude" ;;
  }
  dimension: meat_department_area {
    type: number
    label: "肉部門"
    sql: ${TABLE}."Meat_Department_Area" ;;
  }
  dimension: opening_date {
    type: string
    label: "開店日"
    sql: ${TABLE}."Opening_Date" ;;
  }
  dimension: phone_number_store {
    type: string
    label: "店舗電話番号"
    sql: ${TABLE}."Phone_Number_Store" ;;
  }
  dimension: salad_bar {
    type: number
    label: "サラダバー"
    sql: ${TABLE}."Salad_Bar" ;;
  }
  dimension: store_area {
    type: string
    label: "店舗地域"
    sql: ${TABLE}."Store_Area" ;;
  }
  dimension: store_category {
    type: string
    label: "店舗カテゴリー"
    sql: ${TABLE}."Store_Category" ;;
  }
  dimension: store_city_town_village {
    type: string
    label: "店舗市区町村"
    sql: ${TABLE}."Store_city_town_village" ;;
  }
  dimension: store_floor_space {
    type: number
    label: "店舗面積"
    sql: ${TABLE}."Store_floor_space" ;;
  }
  dimension: store_id {
    primary_key: yes
    type: string
    label: "店舗ID"
    sql: ${TABLE}."Store_ID" ;;
  }
  dimension: store_manager {
    type: string
    label: "店舗マネージャー"
    sql: ${TABLE}."Store_Manager" ;;
  }
  dimension: store_name {
    type: string
    label: "店舗名"
    sql: ${TABLE}."Store_Name" ;;
  }
  dimension: store_number {
    type: number
    label: "店舗番号"
    sql: ${TABLE}."Store_number" ;;
  }
  dimension: store_prefecture {
    type: string
    label: "店舗都道府県"
    sql: ${TABLE}."Store_Prefecture" ;;
  }
  dimension: street_address_store {
    type: string
    label: "店舗住所"
    sql: ${TABLE}."Street_Address_Store" ;;
  }
  dimension: video_store {
    type: number
    label: "ビデオ店舗"
    sql: ${TABLE}."Video_Store" ;;
  }
  dimension: zip_code_store {
    type: number
    label: "店舗ジップコード"
    sql: ${TABLE}."Zip_Code_Store" ;;
  }
  dimension: store_prefecture_city {
    type: string
    label: "店舗都道府県_市区町村"
    sql: ${store_prefecture} ||', '||${store_city_town_village} ;;
  }
  dimension: customer_location {
    type: location
    sql_latitude: ${TABLE}."Latitude" ;;
    sql_longitude: ${TABLE}."Longitude" ;;
  }
  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
