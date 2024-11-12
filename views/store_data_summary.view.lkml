include: "/views/product_master.view.lkml"

view: produt_inheri {
  extends: [product_master]
  dimension: category_id {hidden: yes}
}
