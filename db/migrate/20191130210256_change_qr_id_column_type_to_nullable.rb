class ChangeQrIdColumnTypeToNullable < ActiveRecord::Migration[6.0]
  def change
    change_column_null :products, :qr_id, true
  end
end
