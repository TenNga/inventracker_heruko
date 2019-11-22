class FolderSerializer < ActiveModel::Serializer
  attributes :id, :name, :folder_id, :user_id, :products, :folders
  # has_many :folders
  # has_many :products
end
