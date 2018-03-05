class Item < ApplicationRecord
  belongs_to :place
  belongs_to :user
  validates :item_name, :user, presence: true
end
