class CreateVerifications < ActiveRecord::Migration[6.0]
  def change
    create_table :verifications do |t|
      t.references :user

      t.string   :token,      null: false
      t.datetime :expires_at, null: false
      t.integer  :kind
    end
  end
end
