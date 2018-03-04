class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name
  belongs_to :place
end
