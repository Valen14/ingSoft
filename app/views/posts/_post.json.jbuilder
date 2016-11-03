json.extract! post, :id, :id_user, :id_city, :title, :description, :done, :created_at, :updated_at
json.url post_url(post, format: :json)