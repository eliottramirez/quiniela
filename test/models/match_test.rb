# == Schema Information
#
# Table name: matches
#
#  id           :integer          not null, primary key
#  date         :datetime
#  result       :string
#  status       :string           default("not_started")
#  home_score   :integer          default(0)
#  away_score   :integer          default(0)
#  home_team_id :integer          not null
#  away_team_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
