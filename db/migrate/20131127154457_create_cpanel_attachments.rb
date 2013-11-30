class CreateCpanelAttachments < ActiveRecord::Migration
  def change
    create_table :cpanel_attachments do |t|
      t.string :name
      t.string :file

      t.timestamps
    end
  end
end
