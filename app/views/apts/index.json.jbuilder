json.array!(@apts) do |apt|
  json.extract! apt, :id, :link, :address, :num_beds, :num_baths, :price, :description, :status, :opinions, :hunt_id, :contact
  json.url apt_url(apt, format: :json)
end
