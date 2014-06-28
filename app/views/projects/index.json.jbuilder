json.array!(@projects) do |project|
  json.extract! project, :id, :name, :instructions
  json.url project_url(project, format: :json)
end
