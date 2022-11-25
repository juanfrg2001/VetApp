json.extract! historial_medico, :id, :agenda_id, :motivo_consulta, :fecha_consulta, :cdiagnostico, :tratamiento_seguir, :created_at, :updated_at
json.url historial_medico_url(historial_medico, format: :json)
