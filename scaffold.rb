rails generate scaffold achievement name:string point_min:integer point_max:integer
rails generate scaffold post id_user:integer id_city:integer title:string description:text done:boolean
rails generate scaffold user id_achievement:integer name:string dni:integer birthdate:date phone:string is_admin:boolean
rails generate scaffold sale id_user:integer points:integer card_number:string due_date:date
rails generate scaffold answer id_user:integer id_comment:integer answer:text
rails generate scaffold postulation id_user:integer id_gauchada:integer estimate_date:date description:text
rails generate scaffold comment id_user:integer comment:text
rails generate scaffold city name:string
