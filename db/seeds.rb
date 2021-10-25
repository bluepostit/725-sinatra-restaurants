require 'faker'

puts 'Creating some restaurants...'

20.times do
  Restaurant.create!(
    name: Faker::CryptoCoin.coin_name,
    address: Faker::ChuckNorris.fact
  )
end

puts 'Done'
