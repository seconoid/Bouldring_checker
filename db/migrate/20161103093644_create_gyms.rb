class CreateGyms < ActiveRecord::Migration[5.0]
  def change
    create_table :gyms do |t|
      t.integer :gym_id, null: false
      t.string :name, null: false
      t.string :place, null: false

      t.timestamps
    end

    add_index :gyms, :gym_id
  end
end
