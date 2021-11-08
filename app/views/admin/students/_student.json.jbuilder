json.extract! student, :id, :name, :address, :phone, :birthday, :users_id, :class_schools_id, :created_at, :updated_at
json.url student_url(student, format: :json)
