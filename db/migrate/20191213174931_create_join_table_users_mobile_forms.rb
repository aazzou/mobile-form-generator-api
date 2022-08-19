class CreateJoinTableUsersMobileForms < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :mobile_forms do |t|
      # t.index [:user_id, :mobile_form_id]
      # t.index [:mobile_form_id, :user_id]
    end
  end
end
