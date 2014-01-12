class AddCodeToAds < ActiveRecord::Migration
  def change
    add_column :cpanel_ads, :code, :text
    remove_column :cpanel_ads, :url
  end
end
