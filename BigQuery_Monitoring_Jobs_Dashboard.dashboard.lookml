- dashboard: bigquery_monitoring_user_dashboard
  title: BigQuery Monitoring [User Dashboard]
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: rMvxugAGhNCXwTWU3QT1jr
  elements:
  - title: Average Slot Usage by Users
    name: Average Slot Usage by Users
    model: bigquery_information_schema
    explore: jobs
    type: looker_area
    fields: [jobs.user_email, jobs.average_slot_ms, date.__date]
    pivots: [jobs.user_email]
    fill_fields: [date.__date]
    filters: {}
    sorts: [jobs.user_email, jobs.average_slot_ms desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Average Slot(ms), orientation: left, series: [{axisId: jobs.average_slot_ms,
            id: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com - jobs.average_slot_ms,
            name: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Filter on a User Email for better Visuals
    listen:
      Date Limit: date.date_filter
      User Email: jobs.user_email
    row: 14
    col: 0
    width: 13
    height: 7
  - title: Processed GiB By User
    name: Processed GiB By User
    model: bigquery_information_schema
    explore: jobs
    type: looker_column
    fields: [jobs.user_email, date.__date, jobs.total_processed_gib]
    pivots: [jobs.user_email]
    fill_fields: [date.__date]
    filters:
      date.date_filter: 8 days
    sorts: [jobs.user_email, date.__date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
    y_axes: [{label: Processed GiB, orientation: left, series: [{axisId: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com
              - jobs.total_processed_gib, id: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com
              - jobs.total_processed_gib, name: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com},
          {axisId: shreyashri@google.com - jobs.total_processed_gib, id: shreyashri@google.com
              - jobs.total_processed_gib, name: shreyashri@google.com}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Filter on a User Email for better Visuals
    listen:
      User Email: jobs.user_email
    row: 21
    col: 0
    width: 13
    height: 8
  - title: Total Billed GiB by User
    name: Total Billed GiB by User
    model: bigquery_information_schema
    explore: jobs
    type: looker_area
    fields: [jobs.user_email, date.__date, jobs.total_gbytes_billed]
    pivots: [jobs.user_email]
    fill_fields: [date.__date]
    filters:
      date.date_filter: 8 days
    sorts: [jobs.user_email, date.__date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total GiB Billed, orientation: left, series: [{axisId: jobs.total_gbytes_billed,
            id: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com - jobs.total_gbytes_billed,
            name: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com}, {
            axisId: jobs.total_gbytes_billed, id: shreyashri@google.com - jobs.total_gbytes_billed,
            name: shreyashri@google.com}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    note_state: collapsed
    note_display: hover
    note_text: Filter on a User Email for better Visuals
    listen:
      User Email: jobs.user_email
    row: 14
    col: 13
    width: 11
    height: 7
  - title: Total Slots (ms) Usage
    name: Total Slots (ms) Usage
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.average_slot_ms]
    filters:
      date.date_filter: 8 days
    sorts: [jobs.average_slot_ms desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Slots (ms) Usage
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Average Slot(ms), orientation: left, series: [{axisId: jobs.average_slot_ms,
            id: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com - jobs.average_slot_ms,
            name: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      User Email: jobs.user_email
    row: 0
    col: 0
    width: 5
    height: 3
  - title: Total Processed (GB)
    name: Total Processed (GB)
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.total_processed_gib]
    filters:
      date.date_filter: 8 days
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Processed (GB)
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Average Slot(ms), orientation: left, series: [{axisId: jobs.average_slot_ms,
            id: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com - jobs.average_slot_ms,
            name: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      User Email: jobs.user_email
    row: 0
    col: 5
    width: 5
    height: 3
  - title: Total Billed (GB)
    name: Total Billed (GB)
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.total_gbytes_billed]
    filters:
      date.date_filter: 8 days
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Billed (GB)
    value_format: "#.##"
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Average Slot(ms), orientation: left, series: [{axisId: jobs.average_slot_ms,
            id: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com - jobs.average_slot_ms,
            name: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      User Email: jobs.user_email
    row: 0
    col: 10
    width: 5
    height: 3
  - title: Number of Job by User
    name: Number of Job by User
    model: bigquery_information_schema
    explore: jobs
    type: looker_column
    fields: [jobs.user_email, date.__date, jobs.query_count]
    pivots: [jobs.user_email]
    fill_fields: [date.__date]
    filters:
      date.date_filter: 8 days
    sorts: [jobs.user_email, date.__date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
    y_axes: [{label: Number of Queries, orientation: left, series: [{axisId: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com
              - jobs.query_count, id: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com
              - jobs.query_count, name: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com},
          {axisId: shreyashri@google.com - jobs.query_count, id: shreyashri@google.com
              - jobs.query_count, name: shreyashri@google.com}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Billed (GB)
    value_format: "#.##"
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Filter on a User Email for better Visuals
    listen:
      User Email: jobs.user_email
    row: 21
    col: 13
    width: 11
    height: 8
  - title: Total Number of Queries Completed
    name: Total Number of Queries Completed
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.query_count]
    filters:
      date.date_filter: 8 days
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
    single_value_title: Total Number of Queries Completed
    value_format: ''
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Average Slot(ms), orientation: left, series: [{axisId: jobs.average_slot_ms,
            id: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com - jobs.average_slot_ms,
            name: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      User Email: jobs.user_email
    row: 0
    col: 15
    width: 4
    height: 3
  - title: Jobs Count Completed
    name: Jobs Count Completed
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.state, jobs.count]
    filters:
      date.date_filter: 8 days
      jobs.state: DONE
    sorts: [jobs.state]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Jobs completed
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      User Email: jobs.user_email
    row: 0
    col: 19
    width: 5
    height: 3
  - title: Average Slot Usage by Users per Hour
    name: Average Slot Usage by Users per Hour
    model: bigquery_information_schema
    explore: jobs
    type: looker_column
    fields: [jobs.user_email, jobs.average_slot_ms, date.__date, date.__hour]
    pivots: [jobs.user_email]
    filters:
      date.date_filter: 8 days
    sorts: [jobs.user_email, jobs.average_slot_ms desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Average Slot(ms), orientation: left, series: [{axisId: jobs.average_slot_ms,
            id: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com - jobs.average_slot_ms,
            name: shreya-sandbox-looker@shreya-sandbox.iam.gserviceaccount.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [date.__date]
    note_state: collapsed
    note_display: hover
    note_text: Filter on a User Email for better Visuals
    listen:
      User Email: jobs.user_email
    row: 3
    col: 0
    width: 24
    height: 11
  filters:
  - name: Date Limit
    title: Date Limit
    type: field_filter
    default_value: 8 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bigquery_information_schema
    explore: jobs
    listens_to_filters: []
    field: date.date_filter
  - name: User Email
    title: User Email
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bigquery_information_schema
    explore: jobs
    listens_to_filters: []
    field: jobs.user_email
