json.extract! user, :id, :rut, :fisrtname, :lastname, :age, :avatar, :nickname, :phone, :municipality_id, :city_id, :created_at, :updated_at
json.url user_url(user, format: :json)
