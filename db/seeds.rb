# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..100).each do
	Post.create(title: 'Emanuel', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat adipisci, libero voluptas eveniet? Veniam esse vero tempore neque. Quia dolores eveniet voluptas culpa alias officia aut quos fuga dicta, odio!')
end