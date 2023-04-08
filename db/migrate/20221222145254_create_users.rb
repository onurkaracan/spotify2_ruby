class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :email, null: false
      t.string :country, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end
