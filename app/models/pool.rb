class Pool < ApplicationRecord
  has_many :bets, dependent: :destroy
  accepts_nested_attributes_for :bets, allow_destroy: true
end
