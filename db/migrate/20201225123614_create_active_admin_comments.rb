class CreateActiveAdminComments < ActiveRecord::Migration[6.0]
  def self.up
    create_table :active_admin_comments do |t|
      t.string :namespace
      t.text   :body
      t.timestamps
    end
  end

  def self.down
    drop_table :active_admin_comments
  end
end
