class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :description
end
