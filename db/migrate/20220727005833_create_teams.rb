class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :slug
      t.string :name
      t.string :flag
      t.string :group
      t.integer :position
      t.integer :played, default: 0
      t.integer :won, default: 0
      t.integer :drawn, default: 0
      t.integer :lost, default: 0
      t.integer :goals_for, default: 0
      t.integer :goals_against, default: 0
      t.integer :goals_difference, default: 0
      t.integer :points, default: 0

      t.timestamps
    end
  end
end
