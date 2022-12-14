[
  { flag: "🇶🇦", group: "A", slug: "qatar", name: "Catar" },
  { flag: "🇪🇨", group: "A", slug: "ecuador", name: "Ecuador" },
  { flag: "🇸🇳", group: "A", slug: "senegal", name: "Senegal" },
  { flag: "🇳🇱", group: "A", slug: "netherlands", name: "Países Bajos" },
  { flag: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", group: "B", slug: "england", name: "Inglaterra" },
  { flag: "🇮🇷", group: "B", slug: "iran", name: "Irán" },
  { flag: "🇺🇸", group: "B", slug: "usa", name: "Estados Unidos" },
  { flag: "🏴󠁧󠁢󠁷󠁬󠁳󠁿", group: "B", slug: "wales", name: "Gales" },
  { flag: "🇦🇷", group: "C", slug: "argentina", name: "Argentina" },
  { flag: "🇸🇦", group: "C", slug: "saudi_arabia", name: "Arabia Saudita" },
  { flag: "🇲🇽", group: "C", slug: "mexico", name: "México" },
  { flag: "🇵🇱", group: "C", slug: "poland", name: "Polonia" },
  { flag: "🇫🇷", group: "D", slug: "france", name: "Francia" },
  { flag: "🇩🇰", group: "D", slug: "denmark", name: "Dinamarca" },
  { flag: "🇹🇳", group: "D", slug: "tunisia", name: "Túnez" },
  { flag: "🇦🇺", group: "D", slug: "australia", name: "Australia" },
  { flag: "🇪🇸", group: "E", slug: "spain", name: "España" },
  { flag: "🇩🇪", group: "E", slug: "germany", name: "Alemania" },
  { flag: "🇯🇵", group: "E", slug: "japan", name: "Japón" },
  { flag: "🇨🇷", group: "E", slug: "costa_rica", name: "Costa Rica" },
  { flag: "🇧🇪", group: "F", slug: "belgium", name: "Bélgica" },
  { flag: "🇨🇦", group: "F", slug: "canada", name: "Canadá" },
  { flag: "🇲🇦", group: "F", slug: "morocco", name: "Marruecos" },
  { flag: "🇭🇷", group: "F", slug: "croatia", name: "Croacia" },
  { flag: "🇧🇷", group: "G", slug: "brazil", name: "Brasil" },
  { flag: "🇷🇸", group: "G", slug: "serbia", name: "Serbia" },
  { flag: "🇨🇭", group: "G", slug: "switzerland", name: "Suiza" },
  { flag: "🇨🇲", group: "G", slug: "cameroon", name: "Camerún" },
  { flag: "🇵🇹", group: "H", slug: "portugal", name: "Portugal" },
  { flag: "🇬🇭", group: "H", slug: "ghana", name: "Ghana" },
  { flag: "🇺🇾", group: "H", slug: "uruguay", name: "Uruguay" },
  { flag: "🇰🇷", group: "H", slug: "korea", name: "Corea del Sur" }
].each { |team| Team.create(team) }
