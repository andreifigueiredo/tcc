json.extract! http, :id, :view_referer, :view_url, :view_method, :req_id, :created_at, :updated_at
json.url http_url(http, format: :json)
