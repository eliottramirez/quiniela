module HeroiconsHelper
  def icon_size(icon_size)
    {
      small: "is-small",
      medium: "is-medium",
      large: "is-large",
      default: ""
    }[icon_size]
  end
end
