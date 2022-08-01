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
require "test_helper"

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
