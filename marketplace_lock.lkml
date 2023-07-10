###################################################################################
# This is a read-only file! Its contents can be edited through the Marketplace UI #
# See the docs at: https://cloud.google.com/looker/docs/data-modeling/marketplace              #
###################################################################################

marketplace_ref: {
  listing: "bigquery-information-schema"
  version: "2.0.4"
  models: ["bigquery_information_schema"]
  override_constant: CONNECTION { value:"shreya-bq-test" }
  override_constant: SCOPE { value:"PROJECT" }
  override_constant: REGION { value:"us" }
  override_constant: BILLING_PROJECT_ID { value:"" }
  override_constant: RESERVATION_ADMIN_PROJECT { value:"" }
  override_constant: MAX_JOB_LOOKBACK { value:"8 HOUR" }
}
