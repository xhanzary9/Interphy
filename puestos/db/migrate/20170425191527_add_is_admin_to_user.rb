class AddIsAdminToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :isAdmin, :bool, :default => false;
  end
end
