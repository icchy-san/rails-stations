class CreateSheets < ActiveRecord::Migration[6.1]
  def change
    create_table :sheets do |t|
      t.integer :column, limit: 5, unsigned: true, null: false
      t.text :row, limit: 1, null: false

      t.timestamps
    end
  end
end
