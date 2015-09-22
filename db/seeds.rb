# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  post = Post.create({
    post.title     = Faker::Book.title
    post.body      = Faker::Lorem.paragraph
    post.publisher = false
    })
  (1, 3, 5).sample.times do
    Comment.create({
      post_id = post.id
      message = Faker::Lorem.sentence
      })
  end
end
