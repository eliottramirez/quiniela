module PoolsHelper
  def bet_span_classes(bet, guess)
    return [] unless bet.guess?(guess)

    classes = []
    classes.append("has-text-weight-bold")
    classes.append("has-text-success") if bet.hit == true
    classes.append("has-text-danger") if bet.hit == false

    classes
  end
end
