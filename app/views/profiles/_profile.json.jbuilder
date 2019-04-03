json.extract! profile, :id, :name, :address, :city, :guitar, :created_at, :updated_at
json.url profile_url(profile, format: :json)
