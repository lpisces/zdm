class CreateCpanelSettings < ActiveRecord::Migration
  def change
    create_table :cpanel_settings do |t|
      t.string :name
      t.string :value
      t.string :summary

      t.timestamps
    end
  end
end
