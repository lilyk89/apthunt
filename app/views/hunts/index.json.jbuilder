json.array!(@hunts) do |hunt|
  json.extract! hunt, :id, :name, :admin, :description
  json.url hunt_url(hunt, format: :json)
end
