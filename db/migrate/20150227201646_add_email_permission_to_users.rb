class AddEmailPermissionToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :email_favorites, :boolean, default: true
  end
end
