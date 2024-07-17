json.extract! create_lab_report, :id, :user_id, :title, :description, :grade, :created_at, :updated_at
json.url create_lab_report_url(create_lab_report, format: :json)
