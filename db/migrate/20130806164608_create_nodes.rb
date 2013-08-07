class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.integer :sort
      t.string :summary
      t.integer :section_id

      t.timestamps
    end
  end
end
