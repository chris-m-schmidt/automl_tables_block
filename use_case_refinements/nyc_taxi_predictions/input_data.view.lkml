include: "/views/input_data.view"

view: +input_data {
  derived_table: {
    sql:  SELECT ROW_NUMBER() OVER() as pk, * FROM `nyc-tlc.yellow.trips` ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    type: number
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendor_id ;;
  }

  dimension_group: pickup_datetime {
    type: time
    sql: ${TABLE}.pickup_datetime ;;
  }

  dimension_group: dropoff_datetime {
    type: time
    sql: ${TABLE}.dropoff_datetime ;;
  }

  dimension: pickup_longitude {
    type: number
    sql: ${TABLE}.pickup_longitude ;;
  }

  dimension: pickup_latitude {
    type: number
    sql: ${TABLE}.pickup_latitude ;;
  }

  dimension: dropoff_longitude {
    type: number
    sql: ${TABLE}.dropoff_longitude ;;
  }

  dimension: dropoff_latitude {
    type: number
    sql: ${TABLE}.dropoff_latitude ;;
  }

  dimension: rate_code {
    type: string
    sql: ${TABLE}.rate_code ;;
  }

  dimension: passenger_count {
    type: number
    sql: ${TABLE}.passenger_count ;;
  }

  dimension: trip_distance {
    type: number
    sql: ${TABLE}.trip_distance ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: fare_amount {
    type: number
    sql: ${TABLE}.fare_amount ;;
  }

  dimension: extra {
    type: number
    sql: ${TABLE}.extra ;;
  }

  dimension: mta_tax {
    type: number
    sql: ${TABLE}.mta_tax ;;
  }

  dimension: imp_surcharge {
    type: number
    sql: ${TABLE}.imp_surcharge ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.tip_amount ;;
  }

  dimension: tolls_amount {
    type: number
    sql: ${TABLE}.tolls_amount ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension: store_and_fwd_flag {
    type: string
    sql: ${TABLE}.store_and_fwd_flag ;;
  }

  measure: count {
    type: count
  }
}