json.extract! user, :id, :id_achievement, :name, :dni, :birthdate, :phone, :is_admin, :created_at, :updated_at
json.url user_url(user, format: :json)