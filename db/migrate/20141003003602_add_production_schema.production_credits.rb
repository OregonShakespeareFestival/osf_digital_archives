# This migration comes from production_credits (originally 20141003001625)
class AddProductionSchema < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :medium # Play, Dance, ...
      t.integer :year
    end

    create_table :productions do |t|
      t.belongs_to :work, index: true
      t.date :open_on
      t.date :close_on
    end

    create_table :credits do |t|
      t.string :credit_type # nil, original, understudy, swing, cover
      t.belongs_to :work, index: true
      t.belongs_to :production, index: true
      t.belongs_to :performance, index: true
      t.belongs_to :role, index: true
      t.belongs_to :person, index: true
    end

    create_table :roles do |t|
      t.string :category # cast, crew, production, direction, writing, department, thanks
      t.string :name
      t.belongs_to :work, index: true
      t.belongs_to :production, index: true
    end

    create_table :people do |t|
      t.string :denormalized_full_name
      t.string :disambiguation # For reference, IMDB uses "(I)", "(II)", etc.
      t.date :date_of_birth
    end

    create_table :performances do |t|
      t.belongs_to :production, index: true
      t.datetime :performed_at
    end

    create_table :venues do |t|
      t.string :denormalized_name
      t.date :opened_on
    end

    create_table :names do |t|
      t.string :full_name
      t.belongs_to :person, index: true
      t.belongs_to :venue, index: true
      t.datetime :cannonized_at
    end
  end
end
