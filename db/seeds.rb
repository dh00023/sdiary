# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create([{ name: "머리" }, 
                 { name: "머리카락" },
                 { name: "허리" },
                 { name: "팔" },
                 { name: "다리" },
                 { name: "팔" },
                 { name: "손" },
                 { name: "중요부위" },
                 { name: "엉덩이" },
                 { name: "몸" },
                 { name: "등"},
                 ])
# (1..100).each do
# 	Post.create(title: 'Emanuel', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat adipisci, libero voluptas eveniet? Veniam esse vero tempore neque. Quia dolores eveniet voluptas culpa alias officia aut quos fuga dicta, odio!',user_id: 1)
# end