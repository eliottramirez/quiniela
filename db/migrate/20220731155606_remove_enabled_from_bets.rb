class RemoveEnabledFromBets < ActiveRecord::Migration[7.0]
  def change
    remove_column :bets, :enabled, :boolean
  end
end
