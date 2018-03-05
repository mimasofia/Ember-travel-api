class Place < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  validates :name, :user, presence: true
end
