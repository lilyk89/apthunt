json.array!(@apts) do |apt|
  json.extract! apt, :id
  json.url apt_url(apt, format: :json)
end
