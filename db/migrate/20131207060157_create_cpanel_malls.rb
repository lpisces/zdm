class CreateCpanelMalls < ActiveRecord::Migration
  def change
    create_table :malls do |t|
      t.string :name
      t.text :url
      t.text :logo_url
      t.string :mall_type

      t.timestamps
    end
  end
end
