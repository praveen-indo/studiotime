class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :studio
      t.integer    :status,           null: false
      t.text       :message,          default: ''
      t.string     :card_holder_name, default: ''
      t.string     :street_address,   null: false
      t.string     :postal_code,      null: false
      t.string     :city,             null: false
      t.string     :state,            null: false
      t.string     :country,          null: false
      t.string     :card_number,      null: false
      t.string     :expiry_month,     null: false
      t.string     :expiry_year,      null: false
      t.float      :sub_total,        null: false
      t.float      :studio_time_fee,  null: false

      t.timestamps
    end
  end
end
