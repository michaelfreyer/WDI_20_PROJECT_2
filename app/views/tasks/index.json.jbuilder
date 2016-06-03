json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :date, :time, :category
  json.url task_url(task, format: :json)
end
