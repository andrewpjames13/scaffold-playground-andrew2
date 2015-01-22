json.array!(@aliens) do |alien|
  json.extract! alien, :id, :first_name, :last_name, :date_of_birth
  json.url alien_url(alien, format: :json)
end
