json.array!(@memberships) do |membership|
  json.extract! membership, :id, :memidid, :memname, :status, :validmonths, :cost, :freetrans, :cost_add
  json.url membership_url(membership, format: :json)
end
