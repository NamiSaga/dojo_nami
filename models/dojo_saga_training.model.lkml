connection: "looker_dojo_saga"

include: "/views/*.view.lkml"

   explore: sales_data {
     join: store_master {
       type: left_outer
       relationship: many_to_one
       sql_on: ${sales_data.store_id} = ${store_master.store_id} ;;
     }
   }

datagroup: dojo_saga_training_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dojo_saga_training_default_datagroup
