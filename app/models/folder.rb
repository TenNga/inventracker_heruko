class Folder < ApplicationRecord
    has_many :products
    has_many :folders
    belongs_to :folder,foreign_key: :folder_id, optional: true
    belongs_to :user
end
