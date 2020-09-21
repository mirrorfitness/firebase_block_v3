view: crash_free_users_query {
  derived_table: {
    sql: WITH userCrashes AS (
        SELECT
          user_pseudo_id,
          MAX(event_name = 'app_exception') hasCrash,
          MAX(event_name = 'app_exception'
            AND (select value.int_value=1 from unnest(event_params) where key='fatal')
          ) hasFatalCrash
        FROM `mirror-app-5e1c3.analytics_190286051.events_*`
        GROUP BY 1
      )

      SELECT
        IF(hasCrash,'crashed','crash-free') crashState,
        IF(hasFatalCrash,'crashed fatal','crash-free') fatalCrashState,
        COUNT(DISTINCT user_pseudo_id) AS users,
        ROUND(COUNT(DISTINCT user_pseudo_id) / SUM(COUNT(DISTINCT user_pseudo_id)) OVER (),2) AS userShare
      FROM userCrashes
      GROUP BY 1,2
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: crash_state {
    type: string
    sql: ${TABLE}.crashState ;;
  }

  dimension: fatal_crash_state {
    type: string
    sql: ${TABLE}.fatalCrashState ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  dimension: user_share {
    type: number
    sql: ${TABLE}.userShare ;;
  }

  set: detail {
    fields: [crash_state, fatal_crash_state, users, user_share]
  }
}