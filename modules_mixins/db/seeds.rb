# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create(title:"coolproject", deadline:"01-02-2016")
Note.create(content:"remember to buy oranges")
Comment.create(text:"nice work")
Comment.create(text:"shitty work")
