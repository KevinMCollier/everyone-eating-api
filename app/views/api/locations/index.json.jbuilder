json.locations @locations do |location|
  json.extract! location, :id, :name, :code
end
