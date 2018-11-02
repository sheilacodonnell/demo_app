class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.belongs_to :product
      t.decimal :list_group, precision: 12, scale: 2, default: 0.0
      t.decimal :list_private, precision: 12, scale: 2, default: 0.0
      t.integer :walk_min_size
      t.integer :walk_max_size
      t.string :duration

      t.timestamps null: false
    end
  end
end
