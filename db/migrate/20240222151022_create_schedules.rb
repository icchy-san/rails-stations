class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.references :movie, foreign_key: true, null: false

      t.timestamps
    end
  end
end
