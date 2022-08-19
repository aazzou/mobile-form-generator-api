class AddJsonConfigToMobileForm < ActiveRecord::Migration[5.2]
  def change
    add_column :mobile_forms, :json_config, :jsonb, :null => false, :default => {}
  end
end
