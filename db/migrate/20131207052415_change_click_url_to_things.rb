class ChangeClickUrlToThings < ActiveRecord::Migration
  def change
      remove_column :things, :master_pic_url
      remove_column :things, :sub_pic_url
      remove_column :things, :click_url
      add_column :things, :master_pic_url, :text
      add_column :things, :sub_pic_url, :text
      add_column :things, :click_url, :text
  end
end
