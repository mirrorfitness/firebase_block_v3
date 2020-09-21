#### User Properties ####
view: user_properties_generated {
extension: required

dimension: user_properties.first_open_time {
type: number
sql:
   (SELECT value.int_value
       FROM UNNEST(${user_properties})
       WHERE key = 'first_open_time') ;;
  }

dimension: user_properties.ga_session_id {
type: number
sql:
   (SELECT value.int_value
       FROM UNNEST(${user_properties})
       WHERE key = 'ga_session_id') ;;
  }

dimension: user_properties.ga_session_number {
type: number
sql:
   (SELECT value.int_value
       FROM UNNEST(${user_properties})
       WHERE key = 'ga_session_number') ;;
  }

dimension: user_properties.last_advertising_id_reset {
type: number
sql:
   (SELECT value.int_value
       FROM UNNEST(${user_properties})
       WHERE key = 'last_advertising_id_reset') ;;
  }

dimension: user_properties.name {
type: string
sql:
   (SELECT value.string_value
       FROM UNNEST(${user_properties})
       WHERE key = 'name') ;;
  }

dimension: user_properties.user_id {
type: string
sql:
   (SELECT value.string_value
       FROM UNNEST(${user_properties})
       WHERE key = 'user_id') ;;
  }

}