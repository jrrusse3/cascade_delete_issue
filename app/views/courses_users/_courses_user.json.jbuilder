json.extract! courses_user, :id, :user_id, :course_id, :created_at, :updated_at
json.url courses_user_url(courses_user, format: :json)
