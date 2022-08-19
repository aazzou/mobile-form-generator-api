class CreateMobileForms < ActiveRecord::Migration[5.2]
  def change
    create_table :mobile_forms do |t|
      t.string :name
      t.string :description
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
