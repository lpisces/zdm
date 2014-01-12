class AddMallToThings < ActiveRecord::Migration
  def change
    add_column :things, :mall_id, :integer
  end
end
