# == Schema Information
#
# Table name: bets
#
#  id         :integer          not null, primary key
#  pool_id    :integer          not null
#  match_id   :integer          not null
#  guess      :string
#  hit        :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Bet < ApplicationRecord
  belongs_to :pool
  belongs_to :match

  validates :guess, inclusion: { in: ["home", "draw", "away"] }, allow_blank: true

  scope :hits, -> { where(hit: true).count }

  def guess?(guess)
    self.guess == guess
  end

  def disabled?
    !self.match.not_started?
  end
end
