class AddSubTitleToThings < ActiveRecord::Migration
  def change
    add_column :things, :sub_title, :string
    add_column :things, :summary, :text
  end
end
