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
require "test_helper"

class BetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
