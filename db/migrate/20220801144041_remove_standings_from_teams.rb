class RemoveStandingsFromTeams < ActiveRecord::Migration[7.0]
  def change
    remove_column :teams, :position, :integer
    remove_column :teams, :played, :integer
    remove_column :teams, :won, :integer
    remove_column :teams, :drawn, :integer
    remove_column :teams, :lost, :integer
    remove_column :teams, :goals_for, :integer
    remove_column :teams, :goals_against, :integer
    remove_column :teams, :goals_difference, :integer
    remove_column :teams, :points, :integer
  end
end
