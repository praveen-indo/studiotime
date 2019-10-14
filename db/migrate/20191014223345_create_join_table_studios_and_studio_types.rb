class CreateJoinTableStudiosAndStudioTypes < ActiveRecord::Migration[6.0]
  def change
    create_join_table :studios, :studio_types do |t|
      t.index [:studio_id, :studio_type_id]
      t.index [:studio_type_id, :studio_id]
    end
  end
end
