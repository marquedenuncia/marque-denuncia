json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :incident_id, :description
  json.url comment_url(comment, format: :json)
end
