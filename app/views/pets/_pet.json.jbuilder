json.extract! pet, :id, :location_id, :responsible_id, :species_id, :nombre, :created_at, :updated_at
json.url pet_url(pet, format: :json)
