class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.string :productName
    	t.text :productDescription
    	t.decimal :productPrice
    	t.integer :quantity
      t.timestamps
    end
  end
end
