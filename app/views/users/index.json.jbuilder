json.array!(@users) do |user|
  json.extract! user, :id, :name, :password_digest, :user_id, :admin, :created_at, :updated_at
  json.url user_url(user, format: :json)
end
