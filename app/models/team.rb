class Team < ApplicationRecord
  include Comparable

  has_many :home_team_matches, class_name: "Match", foreign_key: "home_team_id"
  has_many :away_team_matches, class_name: "Match", foreign_key: "away_team_id"

  def <=>(other)
    self.points <=> other.points
  end

  def self.standings
    ["A", "B", "C", "D", "E", "F"].map do |group|
      { group_name: group, teams: Team.all.where(group: group) }
    end
  end
end
