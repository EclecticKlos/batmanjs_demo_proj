require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

foo = 0
25.times do
  sleep 1
  Post.create(:title => "Post #{foo.to_i}", :content => "#{Faker::Lorem.paragraph(5)}")
  foo = foo + 1
end
