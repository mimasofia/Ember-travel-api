class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :place
  belongs_to :place

  def place
    object.place.id
  end
end
