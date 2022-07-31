class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.string :stage
      t.string :result
      t.string :status, default: "not_started"
      t.integer :home_score, default: 0
      t.integer :away_score, default: 0
      t.references :home_team, null: false
      t.references :away_team, null: false

      t.timestamps
    end

    add_foreign_key :matches, :teams, column: :home_team_id
    add_foreign_key :matches, :teams, column: :away_team_id
  end
end
