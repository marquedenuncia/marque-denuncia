json.array!(@establishments) do |establishment|
  json.extract! establishment, :id, :address, :lat, :lng
  json.url establishment_url(establishment, format: :json)
end
