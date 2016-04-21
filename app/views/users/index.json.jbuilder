json.array!(@users) do |user|
  json.extract! user, :id, :id, :name, :status, :memid, :regdate, :expiredate
  json.url user_url(user, format: :json)
end
