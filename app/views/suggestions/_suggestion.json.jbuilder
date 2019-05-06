json.extract! suggestion, :id, :description, :comment, :user_id, :type_sugestion_id, :created_at, :updated_at
json.url suggestion_url(suggestion, format: :json)
