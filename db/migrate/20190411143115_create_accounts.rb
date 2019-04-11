class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :gender
      t.string :dob
      t.integer :feet
      t.integer :inches
      t.integer :weight

      t.timestamps
    end
  end
end
