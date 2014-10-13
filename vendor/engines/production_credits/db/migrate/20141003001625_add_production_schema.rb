class AddProductionSchema < ActiveRecord::Migration
  def change
    create_table :production_credits_works do |t|
      t.string :title
      t.string :medium # Play, Dance, ...
      t.integer :year
    end

    create_table :production_credits_productions do |t|
      t.belongs_to :work, index: true
      t.date :open_on
      t.date :close_on
    end

    create_table :production_credits_credits do |t|
      t.string :credit_type # nil, original, understudy, swing, cover
      t.belongs_to :work, index: true
      t.belongs_to :production, index: true
      t.belongs_to :performance, index: true
      t.belongs_to :role, index: true
      t.belongs_to :person, index: true
    end

    create_table :production_credits_roles do |t|
      t.string :category # cast, crew, production, direction, writing, department, thanks
      t.string :name
      t.belongs_to :work, index: true
      t.belongs_to :production, index: true
    end

    create_table :production_credits_people do |t|
      t.string :denormalized_full_name
      t.string :disambiguation # For reference, IMDB uses "(I)", "(II)", etc.
      t.date :date_of_birth
    end

    create_table :production_credits_performances do |t|
      t.belongs_to :production, index: true
      t.datetime :performed_a t
    end

    create_table :production_credits_venues do |t|
      t.string :denormalized_name
      t.date :opened_on
    end

    create_table :production_credits_names do |t|
      t.string :full_name
      t.belongs_to :person, index: true
      t.belongs_to :venue, index: true
      t.datetime :cannonized_at
    end
  end
end
