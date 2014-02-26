- view: orders
  fields:

  - measure: count
    type: count_distinct
    sql: ${id}
    detail: detail*

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: id
    type: int

  - dimension: order_amount
    type: int

  - dimension: status

  - dimension: total_order_amount
    type: sum

  - dimension: user_id
    type: int
    sets:
      - ignore


  # ----- Detail ------
  sets:
    detail:
      - id
      - users.id
      - users.name

