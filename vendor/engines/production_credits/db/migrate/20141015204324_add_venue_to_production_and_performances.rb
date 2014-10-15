class AddVenueToProductionAndPerformances < ActiveRecord::Migration
  def change
    add_column :production_credits_productions, :venue_id, :integer
    add_column :production_credits_performances, :venue_id, :integer
  end
end
