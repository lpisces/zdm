class CreateCpanelTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.text :name
      t.integer :section_id

      t.timestamps
    end
  end
end
