json.extract! medico, :id, :especialidad_id, :nombre, :telefono, :direccion_residencia, :created_at, :updated_at
json.url medico_url(medico, format: :json)
