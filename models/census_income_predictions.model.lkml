connection: "@{database_connection}"

include: "/explores/automl_tables.explore"
include: "/use_case_refinements/census_income_predictions/*"

explore: census_income_predictions {
  label: "AutoML Tables: Census Income Predictions"
  description: "Use this Explore to create regression and classification models for advanced analytics using U.S. Census income data"
  hidden: yes
  extends: [automl_tables]

  join: automl_predict {
    type: full_outer
    sql_on: ${input_data.id} = ${automl_predict.id} ;;
    relationship: one_to_one
  }
}
