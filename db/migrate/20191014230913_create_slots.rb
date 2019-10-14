class CreateSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :slots do |t|
      t.date :date, null: false
      t.time :from, null: false
      t.time :to,   null: false

      t.timestamps
    end
  end
end
