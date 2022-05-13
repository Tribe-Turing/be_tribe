class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :pronouns
      t.string :password_digest
      t.string :bio
      t.string :picture
      t.string :city

      t.timestamps
    end
  end
end
