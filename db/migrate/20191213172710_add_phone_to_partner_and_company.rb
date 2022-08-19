class AddPhoneToPartnerAndCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :partners, :phone, :string, :null => true
    add_column :companies, :phone, :string, :null => true
  end
end
