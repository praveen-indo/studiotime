class CreateStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :studios do |t|
      t.references :user

      t.string  :name,                    null: false
      t.text    :details,                 null: false
      t.integer :min_booking_time,        default: 0
      t.string  :studio_hours,            default: ''
      t.text    :past_clients,            default: ''
      t.text    :audio_samples,           default: ''
      t.text    :amenities,               default: ''
      t.text    :main_equipment,          default: ''
      t.text    :studio_rules,            default: ''
      t.text    :address,                 null: false
      t.string  :latitude,                null: false
      t.string  :longitude,               null: false
      t.text    :landmark,                default: ''
      t.float   :price_per_hour,          null: false
      t.boolean :audio_engineer_included, default: false
      t.time    :opening_time,            null: false
      t.time    :closing_time,            null: false
    
      t.timestamps
    end
  end
end