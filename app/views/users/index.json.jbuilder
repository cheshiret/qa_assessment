json.array!(@users) do |user|
  json.extract! user, :id, :id, :name, :status, :mem_id, :reg_date, :expire_date, :create_date, :update_update, :datetime
  json.url user_url(user, format: :json)
end
