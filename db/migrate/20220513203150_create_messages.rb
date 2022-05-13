class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :body
      t.references :chatrooms, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
