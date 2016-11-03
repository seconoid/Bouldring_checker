class AddOwnerIdToGym < ActiveRecord::Migration[5.0]
  def change
    add_column :gyms, :owner_id, :integer
  end
end
