json.array!(@dvds) do |dvd|
  json.extract! dvd, :id, :dvdid, :dvdname, :status, :dvdtype, :price
  json.url dvd_url(dvd, format: :json)
end
