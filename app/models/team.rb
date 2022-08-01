# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  slug       :string
#  name       :string
#  flag       :string
#  group      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Team < ApplicationRecord
  has_many :home_team_matches, class_name: "Match", foreign_key: "home_team_id"
  has_many :away_team_matches, class_name: "Match", foreign_key: "away_team_id"
end
