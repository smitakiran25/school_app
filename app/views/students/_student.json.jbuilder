json.extract! student, :id, :name, :section, :dob, :standard, :year_of_joined, :created_at, :updated_at
json.url student_url(student, format: :json)
