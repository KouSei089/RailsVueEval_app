5.times do
  User.create(
    title: Faker::Lorem.word,
    service: Faker::Lorem.word,
    language: Faker::Lorem.word,
    description: Faker::Lorem.sentence,
  )
end
