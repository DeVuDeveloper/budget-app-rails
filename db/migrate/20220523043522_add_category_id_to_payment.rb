class AddCategoryIdToPayment < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :category_id, :integer
  end
end
