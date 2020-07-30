# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all

10.times do
    city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::GreekPhilosophers.quote, email: Faker::Internet.email, age: rand(18..77), city_id: City.all.sample.id)
end

20.times do
    gossip = Gossip.create!(title: Faker::Quote.famous_last_words, content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4), user_id: User.all.sample.id)
end

10.times do
    tag = Tag.create!(title: Faker::Hipster.word)
end

40.times do
    join_table = JoinTableTagsGossip.create!(gossip_id: Gossip.all.sample.id, tag_id: Tag.all.sample.id)
end

10.times do
    private_message = PrivateMessage.create!(content: Faker::Quote.yoda, recipient_id: User.all.sample.id, sender_id: User.all.sample.id)
end

60.times do
    comment = Comment.create!(content: Faker::ChuckNorris.fact, gossip_id: Gossip.all.sample.id, user_id: User.all.sample.id)
end

puts "10 cities, 10 users, 20 gossips, 10 tags, 40 taggings, 10 PMs, 60 comments"