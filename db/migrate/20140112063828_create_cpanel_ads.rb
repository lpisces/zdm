class CreateCpanelAds < ActiveRecord::Migration
  def change
    create_table :cpanel_ads do |t|
      t.string :position
      t.integer :height
      t.integer :width
      t.text :url
      t.text :description
      t.boolean :is_displayed

      t.timestamps
    end
  end
end
