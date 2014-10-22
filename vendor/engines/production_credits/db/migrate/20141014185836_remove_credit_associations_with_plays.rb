class RemoveCreditAssociationsWithPlays < ActiveRecord::Migration
  def change
      remove_column :production_credits_credits, :work_id
      remove_column :production_credits_credits, :production_id
      remove_column :production_credits_credits, :performance_id
  end
end
