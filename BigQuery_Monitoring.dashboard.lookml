- dashboard: bigquery_monitoring
  title: BigQuery Monitoring
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: QCPDNlDrucp88r3NdESm1U
  elements:
  - title: Total Slots ms
    name: Total Slots ms
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.total_slot_ms]
    filters: {}
    sorts: [jobs.total_slot_ms desc 0]
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
    single_value_title: Total Slots (ms)
    hidden_pivots: {}
    show_view_names: false
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 1
    col: 13
    width: 3
    height: 2
  - title: Total Bytes Processed
    name: Total Bytes Processed
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.total_processed_gib]
    filters: {}
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
    single_value_title: Total Bytes Processed (GiB)
    hidden_pivots: {}
    show_view_names: false
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 1
    col: 3
    width: 4
    height: 2
  - title: Total Bytes Billed
    name: Total Bytes Billed
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.total_gbytes_billed]
    filters: {}
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
    single_value_title: Total Billed Bytes (GiB)
    value_format: '0.00'
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 1
    col: 10
    width: 3
    height: 2
  - title: Total Run Time
    name: Total Run Time
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.total_runtime]
    filters: {}
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
    single_value_title: Total Run Time (s)
    value_format: '0.00'
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 1
    col: 16
    width: 4
    height: 2
  - title: Total Bytes Spilled
    name: Total Bytes Spilled
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.total_spill_to_disk_gib]
    filters: {}
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
    single_value_title: Total Bytes Spilled to Disk (GiB)
    value_format: '0.00'
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 1
    col: 20
    width: 4
    height: 2
  - title: Query Count
    name: Query Count
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.query_count]
    filters: {}
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
    single_value_title: Jobs Count
    value_format: ''
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 1
    col: 0
    width: 3
    height: 2
  - title: Query Cache Rate
    name: Query Cache Rate
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.query_cache_rate]
    filters: {}
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
    single_value_title: Query Cache Rate
    value_format: ''
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 1
    col: 7
    width: 3
    height: 2
  - title: Running Jobs Count
    name: Running Jobs Count
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.query_count]
    filters:
      date.date_filter: 8 days
      jobs.state: RUNNING
    sorts: [jobs.query_count desc 0]
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
    single_value_title: Total Jobs Running
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    Created: date.date_filter
    note_state: expanded
    note_display: below
    note_text: For a duration since Creation Time
    listen:
      Creation Time: jobs.creation_time
      Job Type: jobs.job_type
      "  Project": tables.table_catalog
    row: 3
    col: 0
    width: 8
    height: 4
  - title: Pending Query Count
    name: Pending Query Count
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.query_count]
    filters:
      date.date_filter: 8 days
      jobs.state: PENDING
    sorts: [jobs.query_count desc 0]
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
    single_value_title: Total Jobs Pending
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    Created: date.date_filter
    note_state: expanded
    note_display: below
    note_text: For a duration since Creation Time
    listen:
      Creation Time: jobs.creation_time
      Job Type: jobs.job_type
      "  Project": tables.table_catalog
    row: 3
    col: 8
    width: 8
    height: 4
  - title: Failed Query Count
    name: Failed Query Count
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.query_count]
    filters:
      date.date_filter: 8 days
      jobs.state: FAILED
    sorts: [jobs.query_count desc 0]
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
    single_value_title: Total Jobs Failed
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    Created: date.date_filter
    note_state: expanded
    note_display: below
    note_text: For a duration since Creation Time
    listen:
      Creation Time: jobs.creation_time
      Job Type: jobs.job_type
      "  Project": tables.table_catalog
    row: 3
    col: 16
    width: 8
    height: 4
  - title: Data Processed by Date
    name: Data Processed by Date
    model: bigquery_information_schema
    explore: jobs
    type: looker_column
    fields: [jobs.creation_date, jobs.total_processed_gib, jobs.total_gbytes_billed]
    fill_fields: [jobs.creation_date]
    filters: {}
    sorts: [jobs.creation_date desc]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: jobs.total_processed_gib,
            id: jobs.total_processed_gib, name: Processed GiB}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: jobs.total_slot_ms,
            id: jobs.total_slot_ms, name: Total Slot ms}, {axisId: jobs.total_gbytes_billed,
            id: jobs.total_gbytes_billed, name: Total GiB Billed}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    label_value_format: '0.00'
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 7
    col: 0
    width: 13
    height: 7
  - title: Slot Usage per Day
    name: Slot Usage per Day
    model: bigquery_information_schema
    explore: jobs
    type: looker_column
    fields: [jobs.creation_date, jobs.total_slot_ms]
    fill_fields: [jobs.creation_date]
    filters: {}
    sorts: [jobs.creation_date desc]
    limit: 500
    column_limit: 50
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
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: jobs.total_slot_ms,
            id: jobs.total_slot_ms, name: Total Slot ms}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '12'
    label_value_format: ''
    series_colors: {}
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 7
    col: 13
    width: 11
    height: 7
  - title: Average Query Duration per Hour
    name: Average Query Duration per Hour
    model: bigquery_information_schema
    explore: jobs
    type: looker_area
    fields: [jobs.creation_hour, jobs.total_slot_ms, jobs.query_count, jobs.total_duration]
    fill_fields: [jobs.creation_hour]
    filters:
      jobs.reservation_id: "-default-pipeline"
      jobs.priority: ''
    sorts: [jobs.total_slot_ms desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${jobs.total_slot_ms})/(1000*60*60*24)
      label: Usage Slot Daily
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: usage_slot_daily
      _type_hint: number
      is_disabled: true
    - category: dimension
      expression: date_time(trunc_days(${jobs.creation_time}))
      label: Usage Time
      value_format:
      value_format_name:
      dimension: usage_time
      _kind_hint: dimension
      _type_hint: 'null'
    - category: table_calculation
      expression: "${jobs.total_duration}/${jobs.query_count}/60"
      label: Average Query Duration (mins)
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: average_query_duration_mins
      _type_hint: number
      is_disabled: false
    query_timezone: America/New_York
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: c301a12f-60ef-6162-72f4-9ba2eadd41f1
        label: Custom
        type: discrete
        colors:
        - "#42d621"
        - "#B1399E"
        - "#C2DD67"
        - "#592EC2"
        - "#4276BE"
        - "#72D16D"
        - "#FFD95F"
        - "#B32F37"
        - "#9174F0"
        - "#E57947"
        - "#75E2E2"
        - "#FBB555"
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    minimum_column_width: 75
    defaults_version: 1
    Created: date.date_filter
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    hidden_fields: [jobs.query_count, jobs.total_duration, jobs.total_slot_ms]
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 14
    col: 0
    width: 8
    height: 6
  - title: Total Slot Usage per Hour
    name: Total Slot Usage per Hour
    model: bigquery_information_schema
    explore: jobs
    type: looker_area
    fields: [jobs.creation_hour, jobs.total_slot_ms, jobs.query_count, jobs.total_duration]
    fill_fields: [jobs.creation_hour]
    filters:
      jobs.reservation_id: "-default-pipeline"
      jobs.priority: ''
    sorts: [jobs.total_slot_ms desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${jobs.total_slot_ms})/(1000*60*60*24)
      label: Usage Slot Daily
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: usage_slot_daily
      _type_hint: number
      is_disabled: true
    - category: dimension
      expression: date_time(trunc_days(${jobs.creation_time}))
      label: Usage Time
      value_format:
      value_format_name:
      dimension: usage_time
      _kind_hint: dimension
      _type_hint: 'null'
    - category: table_calculation
      expression: "${jobs.total_duration}/${jobs.query_count}/60"
      label: Average Query Duration (mins)
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: average_query_duration_mins
      _type_hint: number
      is_disabled: false
    query_timezone: America/New_York
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: two-color
      custom:
        id: '037828bd-7df2-608e-db09-ff4bfd50a0b7'
        label: Custom
        type: discrete
        colors:
        - "#d6372d"
        - "#B1399E"
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    minimum_column_width: 75
    defaults_version: 1
    Created: date.date_filter
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    hidden_fields: [jobs.query_count, jobs.total_duration]
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 14
    col: 8
    width: 8
    height: 6
  - title: GB Processed per Hour
    name: GB Processed per Hour
    model: bigquery_information_schema
    explore: jobs
    type: looker_area
    fields: [jobs.creation_hour, jobs.total_slot_ms, jobs.query_count, jobs.total_duration,
      jobs.total_processed_gib]
    fill_fields: [jobs.creation_hour]
    filters:
      jobs.reservation_id: "-default-pipeline"
      jobs.priority: ''
    sorts: [jobs.total_slot_ms desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${jobs.total_slot_ms})/(1000*60*60*24)
      label: Usage Slot Daily
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: usage_slot_daily
      _type_hint: number
      is_disabled: true
    - category: dimension
      expression: date_time(trunc_days(${jobs.creation_time}))
      label: Usage Time
      value_format:
      value_format_name:
      dimension: usage_time
      _kind_hint: dimension
      _type_hint: 'null'
    - category: table_calculation
      expression: "${jobs.total_duration}/${jobs.query_count}/60"
      label: Average Query Duration (mins)
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: average_query_duration_mins
      _type_hint: number
      is_disabled: false
    query_timezone: America/New_York
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    color_application:
      collection_id: two-color
      custom:
        id: caa895ab-7766-5fce-1f15-0945eb15d706
        label: Custom
        type: discrete
        colors:
        - "#3034d6"
        - "#B1399E"
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    minimum_column_width: 75
    defaults_version: 1
    Created: date.date_filter
    hidden_pivots: {}
    hidden_fields: [jobs.query_count, jobs.total_duration, average_query_duration_mins,
      jobs.total_slot_ms]
    value_labels: legend
    label_type: labPer
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 20
    col: 0
    width: 8
    height: 7
  - title: Concurrent Queries
    name: Concurrent Queries
    model: bigquery_information_schema
    explore: jobs
    type: looker_line
    fields: [jobs.creation_hour, jobs.total_slot_ms, jobs.query_count, jobs.total_duration,
      jobs.total_processed_gib]
    fill_fields: [jobs.creation_hour]
    filters:
      jobs.reservation_id: "-default-pipeline"
      jobs.priority: ''
    sorts: [jobs.total_slot_ms desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${jobs.total_slot_ms})/(1000*60*60*24)
      label: Usage Slot Daily
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: usage_slot_daily
      _type_hint: number
      is_disabled: true
    - category: dimension
      expression: date_time(trunc_days(${jobs.creation_time}))
      label: Usage Time
      value_format:
      value_format_name:
      dimension: usage_time
      _kind_hint: dimension
      _type_hint: 'null'
    - category: table_calculation
      expression: "${jobs.total_duration}/${jobs.query_count}/60"
      label: Average Query Duration (mins)
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: average_query_duration_mins
      _type_hint: number
      is_disabled: false
    query_timezone: America/New_York
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: two-color
      custom:
        id: 7f6a5c5a-6aee-958f-e4da-23e2178e6733
        label: Custom
        type: discrete
        colors:
        - "#3715d6"
        - "#B1399E"
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    minimum_column_width: 75
    defaults_version: 1
    Created: date.date_filter
    hidden_pivots: {}
    hidden_fields: [jobs.total_duration, average_query_duration_mins, jobs.total_slot_ms,
      jobs.total_processed_gib]
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 14
    col: 16
    width: 8
    height: 6
  - title: Query Count by Priority and State
    name: Query Count by Priority and State
    model: bigquery_information_schema
    explore: jobs
    type: looker_column
    fields: [jobs.priority, jobs.query_count, jobs.state]
    filters: {}
    sorts: [jobs.query_count desc 0]
    limit: 500
    column_limit: 50
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Query Count
    value_format: ''
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
    row: 27
    col: 0
    width: 8
    height: 6
  - title: Data processed per day across projects
    name: Data processed per day across projects
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [jobs.creation_date, jobs.project_id, jobs.total_processed_gib]
    pivots: [jobs.project_id]
    fill_fields: [jobs.creation_date]
    filters: {}
    sorts: [jobs.project_id, jobs.creation_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    minimum_column_width: 75
    series_column_widths:
      jobs.creation_date: 513
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 20
    col: 8
    width: 8
    height: 7
  - title: Average Duration By Query State
    name: Average Duration By Query State
    model: bigquery_information_schema
    explore: jobs
    type: looker_column
    fields: [jobs.state, jobs.average_duration, jobs.average_runtime]
    filters:
      jobs.creation_time: 1 hours
    sorts: [jobs.average_duration desc 0]
    limit: 500
    column_limit: 50
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Queries Pending
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    Created: date.date_filter
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 20
    col: 16
    width: 8
    height: 7
  - title: Failed Queries
    name: Failed Queries
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [jobs.query_count, jobs.user_email, jobs.average_duration, jobs.average_runtime,
      jobs.total_slot_ms, jobs.total_processed_gib]
    filters:
      jobs.creation_time: 1 hours
      jobs.state: FAILED
    sorts: [jobs.query_count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Total Queries Failed
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    Created: date.date_filter
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
    row: 27
    col: 8
    width: 8
    height: 6
  - title: Data Transfer Jobs
    name: Data Transfer Jobs
    model: bigquery_information_schema
    explore: jobs
    type: looker_column
    fields: [jobs.user_email, jobs.total_slot_ms, jobs.total_processed_gib]
    filters:
      jobs.job_id: bqts%
      jobs.project_id: ''
    sorts: [jobs.total_slot_ms desc 0]
    limit: 500
    column_limit: 50
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
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
    row: 27
    col: 16
    width: 8
    height: 6
  - title: Average Slots Hourly Usage
    name: Average Slots Hourly Usage
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [jobs.creation_hour_of_day, jobs.creation_date, jobs.average_slot_ms]
    pivots: [jobs.creation_date]
    fill_fields: [jobs.creation_hour_of_day, jobs.creation_date]
    filters: {}
    sorts: [jobs.creation_date, jobs.creation_hour_of_day 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      jobs.creation_hour_of_day: 89
    series_cell_visualizations:
      jobs.average_slot_ms:
        is_active: true
        value_display: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
      State: jobs.state
    row: 33
    col: 0
    width: 24
    height: 13
  - type: button
    name: button_1800
    rich_content_json: '{"text":"User Dashboard","description":"","newTab":true,"alignment":"center","size":"large","style":"FILLED","color":"#1A73E8","href":"https://googlecloudpso.cloud.looker.com/dashboards/386?Date%20Limit=8%20days&User%20Email="}'
    row: 0
    col: 0
    width: 11
    height: 1
  - type: button
    name: button_1802
    rich_content_json: '{"text":"Jobs Dashboard","description":"","newTab":true,"alignment":"center","size":"large","style":"FILLED","color":"#1A73E8","href":"https://googlecloudpso.cloud.looker.com/dashboards/388?Date+Limit=8+days&%5BJob+ID%5D=&Job+Type="}'
    row: 0
    col: 12
    width: 12
    height: 1
  - title: Jobs Errors
    name: Jobs Errors
    model: bigquery_information_schema
    explore: jobs
    type: looker_pie
    fields: [jobs.error_result, jobs.count]
    filters: {}
    sorts: [jobs.count desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_colors: {}
    defaults_version: 1
    listen:
      Job Type: jobs.job_type
      Date Limit: date.date_filter
      "  Project": tables.table_catalog
    row: 46
    col: 0
    width: 24
    height: 11
  - title: Top 5 Users
    name: Top 5 Users
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [jobs.count, jobs.total_processed_tib, jobs.average_processed_gib, jobs.average_duration,
      jobs.user_email, jobs.total_slot_ms]
    filters:
      tables.table_name: "-NULL"
    sorts: [jobs.user_email]
    limit: 5
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      jobs.count:
        is_active: true
      jobs.total_processed_tib:
        is_active: true
      jobs.average_processed_gib:
        is_active: true
      jobs.average_duration:
        is_active: true
    defaults_version: 1
    minimum_column_width: 75
    column_order: ["$$$_row_numbers_$$$", jobs.user_email, jobs.total_slot_ms, jobs.count,
      jobs.total_processed_tib, jobs.average_processed_gib, jobs.average_duration]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen:
      Date Limit: date.date_filter
    row: 57
    col: 0
    width: 8
    height: 6
  - title: Top 5 Projects
    name: Top 5 Projects
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [jobs.count, jobs.total_processed_tib, jobs.average_processed_gib, jobs.average_duration,
      jobs.project_id]
    filters:
      tables.table_name: "-NULL"
    sorts: [jobs.total_processed_tib desc]
    limit: 5
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      jobs.count:
        is_active: true
      jobs.total_processed_tib:
        is_active: true
      jobs.average_processed_gib:
        is_active: true
      jobs.average_duration:
        is_active: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date Limit: date.date_filter
    row: 57
    col: 8
    width: 8
    height: 6
  - title: Top 5 Tables
    name: Top 5 Tables
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [tables.table_catalog, tables.table_schema, tables.table_name, jobs.count,
      jobs.total_processed_tib, jobs.average_processed_gib, jobs.average_duration]
    filters:
      tables.table_name: "-NULL"
    sorts: [jobs.total_processed_tib desc]
    limit: 15
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      jobs.count:
        is_active: true
      jobs.total_processed_tib:
        is_active: true
      jobs.average_processed_gib:
        is_active: true
      jobs.average_duration:
        is_active: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date Limit: date.date_filter
    row: 57
    col: 16
    width: 8
    height: 6
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
  - name: Creation Time
    title: Creation Time
    type: field_filter
    default_value: 1 hour
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bigquery_information_schema
    explore: jobs
    listens_to_filters: []
    field: jobs.creation_time
  - name: "  Project"
    title: "  Project"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: bigquery_information_schema
    explore: jobs
    listens_to_filters: []
    field: tables.table_catalog
  - name: Job Type
    title: Job Type
    type: field_filter
    default_value: QUERY
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: bigquery_information_schema
    explore: jobs
    listens_to_filters: []
    field: jobs.job_type
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: bigquery_information_schema
    explore: jobs
    listens_to_filters: []
    field: jobs.state
