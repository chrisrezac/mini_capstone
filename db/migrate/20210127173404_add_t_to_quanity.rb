class AddTToQuanity < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :quanity, :quantity
  end
end
