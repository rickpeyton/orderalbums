class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :set_standard_price
      t.timestamps
    end
  end
end
