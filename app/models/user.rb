# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  super_admin            :boolean          default(FALSE)
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :pools, dependent: :destroy
  has_many :parties, through: :pools
  has_one_attached :avatar

  def owner_of?(pool)
    pool.user_id == self.id
  end

  def admin_of?(party)
    self.pool(party)&.party_admin
  end

  def pool(party)
    self.pools.find_by(party: party)
  end

  def member_of?(party)
    !self.pools.find_by(party: party).nil?
  end
end
