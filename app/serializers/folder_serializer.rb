class FolderSerializer < ActiveModel::Serializer
  attributes :id, :name, :folder_id, :user_id, :folders, :products
  has_many :folders
  has_many :products
end
