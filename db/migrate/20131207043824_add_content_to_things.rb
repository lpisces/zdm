class AddContentToThings < ActiveRecord::Migration
  def change
    add_column :things, :content, :text
  end
end
