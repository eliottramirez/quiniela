class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :sharing_code

      t.timestamps
    end
  end
end
