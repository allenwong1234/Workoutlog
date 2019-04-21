class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :date
      t.string :focus
      t.text :details

      t.timestamps
    end
  end
end
