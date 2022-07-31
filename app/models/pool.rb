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
class Pool < ApplicationRecord
  belongs_to :party
  belongs_to :user

  has_many :bets, dependent: :destroy
  accepts_nested_attributes_for :bets, allow_destroy: true

  def belongs_to?(user)
    self.user_id == user.id
  end

  def points
    self.bets.hits
  end

  def public_bets
    self.bets.reject { |bet| bet.match.not_started? }
  end
end
