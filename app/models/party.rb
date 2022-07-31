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
class Party < ApplicationRecord
  has_many :pools, dependent: :destroy
  has_many :users, through: :pools

  accepts_nested_attributes_for :pools, allow_destroy: true

  after_create :set_sharing_code

  def admin
    pool = Pool.find_by(party: self, party_admin: true)

    pool.user
  end

  def sorted_users
    self.users.sort_by { |user| user.pool(self).points }.reverse
  end

  private

  def set_sharing_code
    salt = "v!d3vaythMmXQfVWQTpD"
    hasher = Hashids.new(salt)
    sharing_code = hasher.encode([self.id, self.admin.id])

    self.update(sharing_code: sharing_code)
  end
end
