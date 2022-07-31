[
  "Eliott",
  "Valentina",
  "Santiago",
  "Ximena",
  "Leonardo",
  "Regina",
  "Emiliano",
  "Camila",
  "Diego",
  "Valeria"
].each { |name| User.create(name: name, email: "#{name.downcase}@mail.com", password: "123456") }
