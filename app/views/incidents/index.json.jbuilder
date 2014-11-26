json.array!(@incidents) do |incident|
  json.extract! incident, :id, :user_id, :incident_type_id, :description, :view_count
  json.url incident_url(incident, format: :json)
end
