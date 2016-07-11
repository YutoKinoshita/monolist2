class Item < ActiveRecord::Base
  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  
  has_many :wants,　foreign_key: "user_id", dependent: :destroy
  has_many :want_items , through: :wants
  
  has_many :haves, foreign_key: "user_id", dependent: :destroy
  has_many :have_items , through: :haves, 
end
