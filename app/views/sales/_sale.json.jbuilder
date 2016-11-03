json.extract! sale, :id, :id_user, :points, :card_number, :due_date, :created_at, :updated_at
json.url sale_url(sale, format: :json)