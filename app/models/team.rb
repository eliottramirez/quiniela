# == Schema Information
#
# Table name: teams
#
#  id               :integer          not null, primary key
#  slug             :string
#  name             :string
#  flag             :string
#  group            :string
#  position         :integer
#  played           :integer          default(0)
#  won              :integer          default(0)
#  drawn            :integer          default(0)
#  lost             :integer          default(0)
#  goals_for        :integer          default(0)
#  goals_against    :integer          default(0)
#  goals_difference :integer          default(0)
#  points           :integer          default(0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
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
