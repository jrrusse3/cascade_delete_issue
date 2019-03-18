json.extract! user, :id, :lname, :fname, :title, :office, :email, :phone, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
