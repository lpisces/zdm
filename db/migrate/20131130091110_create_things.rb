class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :title
      t.decimal :price
      t.decimal :coupon_price
      t.string :master_pic_url
      t.text :sub_pic_url
      t.string :click_url
      t.integer :node_id

      t.timestamps
    end
  end
end
