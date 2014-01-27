json.array!(@performances) do |performance|
  json.extract! performance, :id, :exercise_id, :name, :value
  json.url performance_url(performance, format: :json)
end
