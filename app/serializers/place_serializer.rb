class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :items
  belongs_to :user
end
