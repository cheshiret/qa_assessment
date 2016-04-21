json.array!(@memberships) do |membership|
  json.extract! membership, :id, :memid, :memname, :status, :validmonths, :cost, :freetrans, :costadd
  json.url membership_url(membership, format: :json)
end
