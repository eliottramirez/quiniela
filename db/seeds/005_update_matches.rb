matches = Match.all.take(12)

finished_matches = matches.shift(8)

finished_matches.each do |match|
  match.update(status: "finished", home_score: (0..4).to_a.sample, away_score: (0..4).to_a.sample)
end

matches.each do |match|
  match.update(status: "live", home_score: (0..2).to_a.sample, away_score: (0..2).to_a.sample)
end
