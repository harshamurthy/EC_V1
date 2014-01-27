json.array!(@routines) do |routine|
  json.extract! routine, :id, :client_id, :description
  json.url routine_url(routine, format: :json)
end
