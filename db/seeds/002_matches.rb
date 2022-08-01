[
  { day: 21, month: 11, hour: 19, home_team: "Catar", away_team: "Ecuador" },
  { day: 21, month: 11, hour: 13, home_team: "Senegal", away_team: "Países Bajos" },
  { day: 21, month: 11, hour: 16, home_team: "Inglaterra", away_team: "Irán" },
  { day: 21, month: 11, hour: 22, home_team: "Estados Unidos", away_team: "Gales" },
  { day: 22, month: 11, hour: 22, home_team: "Francia", away_team: "Australia" },
  { day: 22, month: 11, hour: 16, home_team: "Dinamarca", away_team: "Túnez" },
  { day: 22, month: 11, hour: 19, home_team: "México", away_team: "Polonia" },
  { day: 22, month: 11, hour: 13, home_team: "Argentina", away_team: "Arabia Saudita" },
  { day: 23, month: 11, hour: 22, home_team: "Bélgica", away_team: "Canadá" },
  { day: 23, month: 11, hour: 19, home_team: "España", away_team: "Costa Rica" },
  { day: 23, month: 11, hour: 16, home_team: "Alemania", away_team: "Japón" },
  { day: 23, month: 11, hour: 13, home_team: "Marruecos", away_team: "Croacia" },
  { day: 24, month: 11, hour: 13, home_team: "Suiza", away_team: "Camerún" },
  { day: 24, month: 11, hour: 16, home_team: "Uruguay", away_team: "Corea del Sur" },
  { day: 24, month: 11, hour: 19, home_team: "Portugal", away_team: "Ghana" },
  { day: 24, month: 11, hour: 22, home_team: "Brasil", away_team: "Serbia" },
  { day: 25, month: 11, hour: 13, home_team: "Gales", away_team: "Irán" },
  { day: 25, month: 11, hour: 16, home_team: "Catar", away_team: "Senegal" },
  { day: 25, month: 11, hour: 19, home_team: "Países Bajos", away_team: "Ecuador" },
  { day: 25, month: 11, hour: 22, home_team: "Inglaterra", away_team: "Estados Unidos" },
  { day: 26, month: 11, hour: 13, home_team: "Túnez", away_team: "Australia" },
  { day: 26, month: 11, hour: 16, home_team: "Polonia", away_team: "Arabia Saudita" },
  { day: 26, month: 11, hour: 19, home_team: "Francia", away_team: "Dinamarca" },
  { day: 26, month: 11, hour: 22, home_team: "Argentina", away_team: "México" },
  { day: 27, month: 11, hour: 13, home_team: "Japón", away_team: "Costa Rica" },
  { day: 27, month: 11, hour: 16, home_team: "Bélgica", away_team: "Marruecos" },
  { day: 27, month: 11, hour: 19, home_team: "Croacia", away_team: "Canadá" },
  { day: 27, month: 11, hour: 22, home_team: "España", away_team: "Alemania" },
  { day: 28, month: 11, hour: 13, home_team: "Camerún", away_team: "Serbia" },
  { day: 28, month: 11, hour: 16, home_team: "Corea del Sur", away_team: "Ghana" },
  { day: 28, month: 11, hour: 19, home_team: "Brasil", away_team: "Suiza" },
  { day: 28, month: 11, hour: 22, home_team: "Portugal", away_team: "Uruguay" },
  { day: 29, month: 11, hour: 22, home_team: "Gales", away_team: "Inglaterra" },
  { day: 29, month: 11, hour: 22, home_team: "Irán", away_team: "Estados Unidos" },
  { day: 29, month: 11, hour: 18, home_team: "Ecuador", away_team: "Senegal" },
  { day: 29, month: 11, hour: 18, home_team: "Países Bajos", away_team: "Catar" },
  { day: 30, month: 11, hour: 18, home_team: "Australia", away_team: "Dinamarca" },
  { day: 30, month: 11, hour: 18, home_team: "Túnez", away_team: "Francia" },
  { day: 30, month: 11, hour: 22, home_team: "Polonia", away_team: "Argentina" },
  { day: 30, month: 11, hour: 22, home_team: "Arabia Saudita", away_team: "México" },
  { day: 1, month: 12, hour: 18, home_team: "Croacia", away_team: "Bélgica" },
  { day: 1, month: 12, hour: 18, home_team: "Canadá", away_team: "Marruecos" },
  { day: 1, month: 12, hour: 22, home_team: "Japón", away_team: "España" },
  { day: 1, month: 12, hour: 22, home_team: "Costa Rica", away_team: "Alemania" },
  { day: 2, month: 12, hour: 18, home_team: "Ghana", away_team: "Uruguay" },
  { day: 2, month: 12, hour: 18, home_team: "Corea del Sur", away_team: "Portugal" },
  { day: 2, month: 12, hour: 22, home_team: "Serbia", away_team: "Suiza" },
  { day: 2, month: 12, hour: 22, home_team: "Camerún", away_team: "Brasil" }
].each do |match|
  Match.create({ date: Time.new(2022, match[:month], match[:day], match[:hour], 0, 0, "+03:00"), # Y, M, D, H, M, S, TZ
                 home_team_id: Team.find_by(name: match[:home_team]).id,
                 away_team_id: Team.find_by(name: match[:away_team]).id })
end
