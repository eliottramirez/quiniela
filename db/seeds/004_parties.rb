guesses = ["home", "draw", "away", nil]

# Users
valentina = User.find_by(name: "Valentina")
santiago = User.find_by(name: "Santiago")
ximena = User.find_by(name: "Ximena")
leonardo = User.find_by(name: "Leonardo")
camila = User.find_by(name: "Camila")
diego = User.find_by(name: "Diego")

# Party 01: "Amigos"
party = Party.new(name: "Amigos")
pool = Pool.new(user: valentina, party_admin: true)
Match.all.each { |match| pool.bets << Bet.new(match: match, guess: guesses.sample) }
party.pools << pool
party.save

party = Party.find_by(name: "Amigos")
[santiago, ximena, leonardo, camila, diego].each do |user|
  pool = Pool.new(user: user)
  Match.all.each { |match| pool.bets << Bet.create(match: match, guess: guesses.sample) }
  party.pools << pool
  party.save
end

# Party 02: "Trabajo"
party = Party.new(name: "Trabajo")
pool = Pool.new(user: santiago, party_admin: true)
Match.all.each { |match| pool.bets << Bet.new(match: match, guess: guesses.sample) }
party.pools << pool
party.save

party = Party.find_by(name: "Trabajo")
[valentina, ximena, leonardo, camila, diego].each do |user|
  pool = Pool.new(user: user)
  Match.all.each { |match| pool.bets << Bet.create(match: match, guess: guesses.sample) }
  party.pools << pool
  party.save
end
