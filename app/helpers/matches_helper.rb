module MatchesHelper
  def format_match_status(match)
    case match.status
    when "not_started" then match.date.localtime.strftime("%H:%M")
    when "live" then "en vivo"
    when "finished" then "finalizado"
    end
  end

  def style_match_status(match)
    case match.status
    when "not_started" then "tag"
    when "live" then "tag is-primary is-light"
    when "finished" then "tag"
    end
  end
end
