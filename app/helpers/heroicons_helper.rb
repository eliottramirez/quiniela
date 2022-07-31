module HeroiconsHelper
  def icon_size(icon_size)
    case icon_size
    when :small then "is-small"
    when :medium then "is-medium"
    when :large then "is-large"
    when nil then ""
    end
  end
end
