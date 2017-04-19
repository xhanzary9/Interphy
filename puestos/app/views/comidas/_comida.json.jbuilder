json.extract! comida, :id, :tipo, :costo, :puesto_id, :created_at, :updated_at
json.url comida_url(comida, format: :json)
