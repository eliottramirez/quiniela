# == Schema Information
#
# Table name: matches
#
#  id           :integer          not null, primary key
#  date         :datetime
#  stage        :string
#  result       :string
#  status       :string           default("not_started")
#  home_score   :integer          default(0)
#  away_score   :integer          default(0)
#  home_team_id :integer          not null
#  away_team_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Match < ApplicationRecord
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"
  has_many :bets

  before_update :update_result
  after_update :update_bets

  def update_result
    self.result =
      if home_score > away_score
        "home"
      elsif home_score == away_score
        "draw"
      else
        "away"
      end
  end

  def update_bets
    return unless self.status == "finished"

    self.bets.each do |bet|
      bet.hit = self.result == bet.guess
      bet.save
    end
  end

  def not_started?
    self.status == "not_started"
  end
end
