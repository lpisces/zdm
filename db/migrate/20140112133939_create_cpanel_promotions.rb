class CreateCpanelPromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :url
      t.integer :mall_id
      t.text :content
      t.integer :order

      t.timestamps
    end
  end
end
