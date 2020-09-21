#### Event Properties ####
view: events_generated {
extension: required

dimension: app_clear_data.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'app_clear_data' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: app_clear_data.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'app_clear_data' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: app_exception.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: app_exception.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: app_exception.fatal {
type: number
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'fatal')
 END ;;
  }

dimension: app_exception.firebase_screen_class {
type: string
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_class')
 END ;;
  }

dimension: app_exception.engagement_time_msec {
type: number
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engagement_time_msec')
 END ;;
  }

dimension: app_exception.firebase_screen_id {
type: number
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_id')
 END ;;
  }

dimension: app_exception.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: app_exception.session_engaged {
type: number
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'session_engaged')
 END ;;
  }

dimension: app_exception.timestamp {
type: number
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'timestamp')
 END ;;
  }

dimension: app_exception.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'app_exception' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: app_remove.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'app_remove' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: app_remove.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'app_remove' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: app_remove.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'app_remove' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: app_remove.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'app_remove' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: app_update.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'app_update' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: app_update.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'app_update' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: app_update.firebase_screen_id {
type: number
sql: CASE WHEN ${event_name} = 'app_update' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_id')
 END ;;
  }

dimension: app_update.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'app_update' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: app_update.firebase_screen_class {
type: string
sql: CASE WHEN ${event_name} = 'app_update' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_class')
 END ;;
  }

dimension: app_update.previous_app_version {
type: string
sql: CASE WHEN ${event_name} = 'app_update' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'previous_app_version')
 END ;;
  }

dimension: app_update.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'app_update' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: error.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'error' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: error.firebase_screen_class {
type: string
sql: CASE WHEN ${event_name} = 'error' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_class')
 END ;;
  }

dimension: error.firebase_screen_id {
type: number
sql: CASE WHEN ${event_name} = 'error' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_id')
 END ;;
  }

dimension: error.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'error' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: error.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'error' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: error.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'error' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: error.error_value {
type: string
sql: CASE WHEN ${event_name} = 'error' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'error_value')
 END ;;
  }

dimension: error.firebase_error {
type: number
sql: CASE WHEN ${event_name} = 'error' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_error')
 END ;;
  }

dimension: firebase_campaign.medium {
type: string
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'medium')
 END ;;
  }

dimension: firebase_campaign.source {
type: string
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'source')
 END ;;
  }

dimension: firebase_campaign.firebase_screen_class {
type: string
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_class')
 END ;;
  }

dimension: firebase_campaign.campaign_info_source {
type: string
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'campaign_info_source')
 END ;;
  }

dimension: firebase_campaign.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: firebase_campaign.term {
type: string
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'term')
 END ;;
  }

dimension: firebase_campaign.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: firebase_campaign.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: firebase_campaign.firebase_screen_id {
type: number
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_id')
 END ;;
  }

dimension: firebase_campaign.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'firebase_campaign' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: first_open.engagement_time_msec {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engagement_time_msec')
 END ;;
  }

dimension: first_open.update_with_analytics {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'update_with_analytics')
 END ;;
  }

dimension: first_open.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: first_open.firebase_conversion {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_conversion')
 END ;;
  }

dimension: first_open.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: first_open.previous_first_open_count {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'previous_first_open_count')
 END ;;
  }

dimension: first_open.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: first_open.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: first_open.firebase_screen_id {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_id')
 END ;;
  }

dimension: first_open.firebase_screen_class {
type: string
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_class')
 END ;;
  }

dimension: first_open.system_app_update {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'system_app_update')
 END ;;
  }

dimension: first_open.system_app {
type: number
sql: CASE WHEN ${event_name} = 'first_open' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'system_app')
 END ;;
  }

dimension: os_update.firebase_screen_class {
type: string
sql: CASE WHEN ${event_name} = 'os_update' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_class')
 END ;;
  }

dimension: os_update.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'os_update' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: os_update.firebase_screen_id {
type: number
sql: CASE WHEN ${event_name} = 'os_update' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_id')
 END ;;
  }

dimension: os_update.previous_os_version {
type: string
sql: CASE WHEN ${event_name} = 'os_update' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'previous_os_version')
 END ;;
  }

dimension: os_update.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'os_update' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: os_update.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'os_update' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: os_update.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'os_update' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: screen_view.firebase_previous_id {
type: number
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_previous_id')
 END ;;
  }

dimension: screen_view.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: screen_view.firebase_screen_class {
type: string
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_class')
 END ;;
  }

dimension: screen_view.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: screen_view.firebase_previous_class {
type: string
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_previous_class')
 END ;;
  }

dimension: screen_view.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: screen_view.entrances {
type: number
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'entrances')
 END ;;
  }

dimension: screen_view.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: screen_view.session_engaged {
type: number
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'session_engaged')
 END ;;
  }

dimension: screen_view.engagement_time_msec {
type: number
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engagement_time_msec')
 END ;;
  }

dimension: screen_view.firebase_screen_id {
type: number
sql: CASE WHEN ${event_name} = 'screen_view' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_id')
 END ;;
  }

dimension: session_start.firebase_screen_class {
type: string
sql: CASE WHEN ${event_name} = 'session_start' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_class')
 END ;;
  }

dimension: session_start.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'session_start' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: session_start.session_engaged {
type: number
sql: CASE WHEN ${event_name} = 'session_start' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'session_engaged')
 END ;;
  }

dimension: session_start.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'session_start' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: session_start.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'session_start' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: session_start.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'session_start' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: session_start.firebase_screen_id {
type: number
sql: CASE WHEN ${event_name} = 'session_start' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_id')
 END ;;
  }

dimension: user_engagement.engagement_time_msec {
type: number
sql: CASE WHEN ${event_name} = 'user_engagement' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engagement_time_msec')
 END ;;
  }

dimension: user_engagement.firebase_event_origin {
type: string
sql: CASE WHEN ${event_name} = 'user_engagement' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_event_origin')
 END ;;
  }

dimension: user_engagement.ga_session_number {
type: number
sql: CASE WHEN ${event_name} = 'user_engagement' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_number')
 END ;;
  }

dimension: user_engagement.firebase_screen_class {
type: string
sql: CASE WHEN ${event_name} = 'user_engagement' THEN
   (SELECT value.string_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_class')
 END ;;
  }

dimension: user_engagement.engaged_session_event {
type: number
sql: CASE WHEN ${event_name} = 'user_engagement' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'engaged_session_event')
 END ;;
  }

dimension: user_engagement.ga_session_id {
type: number
sql: CASE WHEN ${event_name} = 'user_engagement' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'ga_session_id')
 END ;;
  }

dimension: user_engagement.firebase_screen_id {
type: number
sql: CASE WHEN ${event_name} = 'user_engagement' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'firebase_screen_id')
 END ;;
  }

dimension: user_engagement.freeride {
type: number
sql: CASE WHEN ${event_name} = 'user_engagement' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'freeride')
 END ;;
  }

dimension: user_engagement.session_engaged {
type: number
sql: CASE WHEN ${event_name} = 'user_engagement' THEN
   (SELECT value.int_value
       FROM UNNEST(${event_params})
       WHERE key = 'session_engaged')
 END ;;
  }

}