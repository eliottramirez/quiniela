class CreatePools < ActiveRecord::Migration[7.0]
  def change
    create_table :pools do |t|
      t.references :party, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :party_admin, default: false

      t.timestamps
    end
  end
end
