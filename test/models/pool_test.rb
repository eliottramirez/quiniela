# == Schema Information
#
# Table name: pools
#
#  id          :integer          not null, primary key
#  party_id    :integer          not null
#  user_id     :integer          not null
#  party_admin :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class PoolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
