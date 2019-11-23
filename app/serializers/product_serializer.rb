class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :description, :price, :note, :folder_id, :image
end

