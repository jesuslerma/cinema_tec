class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :stars
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
