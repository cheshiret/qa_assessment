json.array!(@cards) do |card|
  json.extract! card, :id, :cardid, :userid, :status, :card_num, :pw, :balance
  json.url card_url(card, format: :json)
end
