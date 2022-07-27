class Bet < ApplicationRecord
  belongs_to :pool
  belongs_to :match

  def guess?(guess)
    self.guess == guess
  end

  def disabled?
    !enabled
  end
end
