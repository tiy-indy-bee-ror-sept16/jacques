# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



@notes = 25.times.collect do
 Note.create(
   title: Faker::Book.title,
   body: Faker::Lorem.sentence
   )
end
@tags = 30.times.collect do
 Tag.create(
   name: Faker::Book.genre
   )
end
50.times do
 Tagging.create(
   note: @notes.sample,
   tag: @tags.sample
   )
end
