json.extract! create_user, :id, :email, :first_name, :last_name, :created_at, :updated_at
json.url create_user_url(create_user, format: :json)
