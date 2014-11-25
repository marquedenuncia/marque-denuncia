json.array!(@users) do |user|
  json.extract! user, :id, :username, :first_name, :last_name, :birth, :cpf, :email, :admin
  json.url user_url(user, format: :json)
end
