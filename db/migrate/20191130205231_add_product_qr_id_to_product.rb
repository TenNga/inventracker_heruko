class AddProductQrIdToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :qr_id, :string, :null => true
  end
end
