User.create(name: "Eliott", email: "eliott@gmail.com", password: "123456", super_admin: true)

[
  "Valentina",
  "Santiago",
  "Ximena",
  "Leonardo",
  "Camila",
  "Diego"
].each do |name|
  user = User.create(
    name: name,
    email: "#{name.downcase.gsub(' ', '_')}@mail.com",
    email_confirmation: "#{name.downcase.gsub(' ', '_')}@mail.com",
    password: "123456",
    password_confirmation: "123456"
  )

  user.avatar.attach(
    io: File.open("db/seeds/avatars/#{name.downcase.gsub(' ', '_')}.jpeg"),
    filename: "00#{user.id}.jpeg",
    content_type: "image/jpeg"
  )
end
