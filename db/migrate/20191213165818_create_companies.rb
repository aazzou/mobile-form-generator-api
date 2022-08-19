class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :address
      t.boolean :status
      t.references :partner, foreign_key: true

      t.timestamps
    end
  end
end
