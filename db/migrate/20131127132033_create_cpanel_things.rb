class CreateCpanelThings < ActiveRecord::Migration
  def change
    create_table :cpanel_things do |t|
      t.string :title
      t.decimal :price
      t.decimal :coupon_price
      t.text :master_pic_url
      t.text :sub_pic_url
      t.text :click_url
      t.integer :node_id

      t.timestamps
    end
  end
end
