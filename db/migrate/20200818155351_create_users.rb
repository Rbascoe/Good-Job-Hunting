class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email             
      t.string :password_digest
      t.string :gender 
      t.integer :age 
      t.string :role

      t.timestamps
    end
  end
end
