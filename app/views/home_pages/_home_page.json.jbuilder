json.extract! home_page, :id, :title, :content, :created_at, :updated_at
json.url home_page_url(home_page, format: :json)
