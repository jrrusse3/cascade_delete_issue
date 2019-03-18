json.extract! course, :id, :course_number, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
