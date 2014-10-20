class AddAliasToCredit < ActiveRecord::Migration
  def change
    add_column :production_credits_credits, :name_id, :integer
  end
end
  