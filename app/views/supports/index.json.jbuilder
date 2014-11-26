json.array!(@supports) do |support|
  json.extract! support, :id, :incident_id, :user_id
  json.url support_url(support, format: :json)
end
