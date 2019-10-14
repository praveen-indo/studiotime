class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string     :url,       null: false
      t.references :imageable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
