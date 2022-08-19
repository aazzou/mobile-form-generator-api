class AddStatusToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :status, :boolean, :null => false, :default => true
  end
end
