class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.references :pool, null: false, foreign_key: true
      t.references :match, null: false, foreign_key: true
      t.string :guess
      t.boolean :hit
      t.boolean :enabled, default: true

      t.timestamps
    end
  end
end
