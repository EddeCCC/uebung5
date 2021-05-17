json.extract! address, :id, :plz, :city, :street, :created_at, :updated_at
json.url address_url(address, format: :json)
