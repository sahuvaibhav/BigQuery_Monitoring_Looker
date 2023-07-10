include: "//bigquery-information-schema/**/*.view.lkml"
include: "//bigquery-information-schema/**/*.explore.lkml"

include: "Bq_cost_sample.dashboard"
include: "/**/*.dashboard"
# #
# Use LookML refinements to refine views and explores defined in the remote project.
# Learn more at: https://docs.looker.com/data-modeling/learning-lookml/refinements
#
#
# For example we could add a new dimension to a view:
#     view: +flights {
#       dimension: air_carrier {
#         type: string
#         sql: ${TABLE}.air_carrier ;;
#       }
#     }
#
# Or apply a label to an explore:
#     explore: +aircraft {
#       label: "Aircraft Simplified"
#     }
#
view: +jobs_timeline_base {

  dimension: job_id {
    hidden: no # More intuitive to show as the PK in the job view than as a FK in the timeline view
    type: string
    sql: ${TABLE}.job_id ;;
    link: {
      label: "Job Lookup Dashboard"
      url: "/dashboards-next/bigquery_information_schema::job_lookup_dashboard?Job%20ID={{ value | encode_uri}}&Created={{date.date_in_filter_format | encode_uri}}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
    link: {
      label: "View Query History in BigQuery"
      url: "https://console.cloud.google.com/bigquery?j=bq:@{REGION}:{{ value }}&page=queryresults"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension_group: period_start {
    # Unfortunately, this is not the partition column, job_creation_time is
    hidden: no # Prefer to use a field in an abstract date view
    description: "Start time of this period"
    type: time
    timeframes: [
      raw,
      time,
      second,
      minute,
      minute5,
      minute15,
      minute30,
      hour,
      date,
      week,
      month,
      time_of_day,
      day_of_week,
      day_of_week_index,
      hour_of_day
    ]
    sql: ${TABLE}.period_start ;;
  }

  dimension_group: job_creation_time {
    # This is the partitioning column
    type: time
    hidden: no # Fields will make more sense in the field picker under the Job view
    timeframes: [raw, date, time]
    sql: ${TABLE}.job_creation_time ;;
  }

  dimension: project_id {
    # This is one of two clustering columns
    hidden:  no # It is more logical to display it at the job level
    description: "ID of the project for the job"
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: user_email {
    # This is one of two clustering columns
    hidden:  no # It is more logical to display it at the job level
    type: string
    sql: ${TABLE}.user_email ;;
  }

  dimension: project_number {
    hidden: no # Foreign key
    type: number
    sql: ${TABLE}.project_number ;;
  }

  dimension: period_slot_ms {
    description: "Slot milliseconds consumed by a job in the period"
    hidden: yes # To be used almost exclusively as a measure
    type: number
    sql: ${TABLE}.period_slot_ms ;;
  }

  measure: period_slot_ms_value {
    description: "Slot milliseconds consumed by a job in the period"
    hidden: no # To be used almost exclusively as a measure
    type: sum
    sql: ${TABLE}.period_slot_ms ;;
  }

  measure: count {
    type: count
  }

  }

  # view: +jobs_base {

  #   dimension: labels {
  #     type: string
  #     sql: TO_JSON_STRING(${TABLE}.labels, "; ") ;;
  #   }

  # }
# view: +jobs_base {
#   extends: [jobs_base]
#   dimension: labels {}
# }


#   explore: +jobs_base {
#     extends: [jobs_base]
#     join: job_labels {
#       sql: LEFT JOIN UNNEST([${jobs.labels}]) as job_labels ;;
#       relationship: one_to_many
#     }
#   }



#   view:  job_labels {

#     dimension: key {
#       type: string

#     }

#     dimension: value {
#       type: string

#     }
#   }
