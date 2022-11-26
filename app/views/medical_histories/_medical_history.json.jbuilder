json.extract! medical_history, :id, :diarie_id, :motivo_consulta, :fecha_consulta, :cdiagnostico, :tratamiento_seguir, :created_at, :updated_at
json.url medical_history_url(medical_history, format: :json)
