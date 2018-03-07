class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :place
  belongs_to :place

  # def list
  #   object.place.id
  # end
end
