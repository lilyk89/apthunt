json.array!(@hunts) do |hunt|
  json.extract! hunt, :id
  json.url hunt_url(hunt, format: :json)
end
