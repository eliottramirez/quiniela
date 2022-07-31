# == Schema Information
#
# Table name: parties
#
#  id           :integer          not null, primary key
#  name         :string
#  sharing_code :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class PartyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
