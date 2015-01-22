json.array!(@orginizations) do |orginization|
  json.extract! orginization, :id, :name, :number_of_employees
  json.url orginization_url(orginization, format: :json)
end
