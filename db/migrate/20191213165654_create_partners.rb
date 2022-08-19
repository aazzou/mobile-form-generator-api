class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :email
      t.string :address
      t.boolean :status

      t.timestamps
    end
  end
end
