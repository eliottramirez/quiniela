[
  ["groups-01", "21-11", "19", "Catar", "Ecuador"],
  ["groups-01", "21-11", "13", "Senegal", "Países Bajos"],
  ["groups-01", "21-11", "16", "Inglaterra", "Irán"],
  ["groups-01", "21-11", "22", "Estados Unidos", "Gales"],
  ["groups-01", "22-11", "22", "Francia", "Australia"],
  ["groups-01", "22-11", "16", "Dinamarca", "Túnez"],
  ["groups-01", "22-11", "19", "México", "Polonia"],
  ["groups-01", "22-11", "13", "Argentina", "Arabia Saudita"],
  ["groups-01", "23-11", "22", "Bélgica", "Canadá"],
  ["groups-01", "23-11", "19", "España", "Costa Rica"],
  ["groups-01", "23-11", "16", "Alemania", "Japón"],
  ["groups-01", "23-11", "13", "Marruecos", "Croacia"],
  ["groups-01", "24-11", "13", "Suiza", "Camerún"],
  ["groups-01", "24-11", "16", "Uruguay", "Corea del Sur"],
  ["groups-01", "24-11", "19", "Portugal", "Ghana"],
  ["groups-01", "24-11", "22", "Brasil", "Serbia"],
  ["groups-02", "25-11", "13", "Gales", "Irán"],
  ["groups-02", "25-11", "16", "Catar", "Senegal"],
  ["groups-02", "25-11", "19", "Países Bajos", "Ecuador"],
  ["groups-02", "25-11", "22", "Inglaterra", "Estados Unidos"],
  ["groups-02", "26-11", "13", "Túnez", "Australia"],
  ["groups-02", "26-11", "16", "Polonia", "Arabia Saudita"],
  ["groups-02", "26-11", "19", "Francia", "Dinamarca"],
  ["groups-02", "26-11", "22", "Argentina", "México"],
  ["groups-02", "27-11", "13", "Japón", "Costa Rica"],
  ["groups-02", "27-11", "16", "Bélgica", "Marruecos"],
  ["groups-02", "27-11", "19", "Croacia", "Canadá"],
  ["groups-02", "27-11", "22", "España", "Alemania"],
  ["groups-02", "28-11", "13", "Camerún", "Serbia"],
  ["groups-02", "28-11", "16", "Corea del Sur", "Ghana"],
  ["groups-02", "28-11", "19", "Brasil", "Suiza"],
  ["groups-02", "28-11", "22", "Portugal", "Uruguay"],
  ["groups-03", "29-11", "22", "Gales", "Inglaterra"],
  ["groups-03", "29-11", "22", "Irán", "Estados Unidos"],
  ["groups-03", "29-11", "18", "Ecuador", "Senegal"],
  ["groups-03", "29-11", "18", "Países Bajos", "Catar"],
  ["groups-03", "30-11", "18", "Australia", "Dinamarca"],
  ["groups-03", "30-11", "18", "Túnez", "Francia"],
  ["groups-03", "30-11", "22", "Polonia", "Argentina"],
  ["groups-03", "30-11", "22", "Arabia Saudita", "México"],
  ["groups-03", "01-12", "18", "Croacia", "Bélgica"],
  ["groups-03", "01-12", "18", "Canadá", "Marruecos"],
  ["groups-03", "01-12", "22", "Japón", "España"],
  ["groups-03", "01-12", "22", "Costa Rica", "Alemania"],
  ["groups-03", "02-12", "18", "Ghana", "Uruguay"],
  ["groups-03", "02-12", "18", "Corea del Sur", "Portugal"],
  ["groups-03", "02-12", "22", "Serbia", "Suiza"],
  ["groups-03", "02-12", "22", "Camerún", "Brasil"]
].each do |match|
  year = 2022
  month = match[1][3, 2].to_i
  day = match[1][0, 2].to_i
  hour = match[2][0, 2].to_i
  minutes = 0
  seconds = 0
  timezone = "+03:00"

  date = Time.new(year, month, day, hour, minutes, seconds, timezone)
  home_team_id = Team.find_by(name: match[3]).id
  away_team_id = Team.find_by(name: match[4]).id

  stage = match[0]

  Match.create({ date: date, home_team_id: home_team_id, away_team_id: away_team_id, stage: stage })
end
