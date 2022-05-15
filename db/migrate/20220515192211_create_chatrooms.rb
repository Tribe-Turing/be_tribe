class CreateChatrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :chatrooms do |t|
      t.string :user_a_id
      t.string :user_b_id

      t.timestamps
    end
  end
end
