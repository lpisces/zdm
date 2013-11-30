class CreateCpanelNodes < ActiveRecord::Migration
  def change
    create_table :cpanel_nodes do |t|
      t.string :name
      t.integer :sort
      t.string :summary
      t.integer :section_id

      t.timestamps
    end
  end
end
