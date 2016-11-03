class RemoveGymIdFromGym < ActiveRecord::Migration[5.0]
  def change
    remove_column :gyms, :gym_id, :integer
  end
end
