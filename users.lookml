- view: users
  fields:

  - measure: count
    type: count_distinct
    sql: ${id}

  - dimension: age

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: id
    type: int

  - dimension: name


  # ----- Detail ------
  sets:
    detail:
      - id
      - name
        # Counters for views that join 'users'
      - orders.count
      - sum_users.count

