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
require "test_helper"

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
