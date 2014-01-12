class CreateCpanelAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :position
      t.integer :height
      t.integer :width
      t.text :code
      t.text :description
      t.boolean :is_displayed

      t.timestamps
    end
  end
end
