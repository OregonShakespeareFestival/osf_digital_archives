class ChangeYearToDate < ActiveRecord::Migration
  def change
    remove_column :production_credits_works, :year
    add_column :production_credits_works, :year, :date
  end
end
