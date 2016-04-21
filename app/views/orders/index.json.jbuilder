json.array!(@orders) do |order|
  json.extract! order, :id, :ordid, :ordnum, :userid, :status, :ordertype
  json.url order_url(order, format: :json)
end
