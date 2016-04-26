class Card < ActiveRecord::Base
  belongs_to :user,:foreign_key => 'userid'
end
