- view: sum_users
  fields:

  - measure: count
    type: count
    detail: detail*

  - dimension: days_as_customer
    type: int

  - dimension: lifetime_order_amount
    type: number

  - dimension: lifetime_orders
    type: number

  - dimension: total_lifetime_order_amount
    type: sum

  - dimension: user_id
    type: int
    sets:
      - ignore

  - dimension: week_count
    type: number


  # ----- Detail ------
  sets:
    detail:
      - users.id
      - users.name

