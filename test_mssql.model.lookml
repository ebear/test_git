
- scoping: true       # for backward compatibi

- connection: test_mssql
- include: test_mssql.includes

- base_view: orders
  view: orders
  label: Orders


- base_view: sum_users
  view: sum_users
  label: Sum Users
  joins:
    - join: users
      sql_on: sum_users.user_id=users.id


- base_view: users
  view: users
  always_filter: {users.age: 20 to}
  joins:
    - join: orders
      sql_on: orders.user_id = users.id

