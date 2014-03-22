# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

challenges = Challenges.create([{index: '1', title: 'Challenge 1',answer_token: 'abcdef1'}])
challenges = Challenges.create([{index: '2', title: 'Challenge 2',answer_token: 'abcdef2'}])
challenges = Challenges.create([{index: '3', title: 'Challenge 3',answer_token: 'abcdef3'}])
challenges = Challenges.create([{index: '4', title: 'Challenge 4',answer_token: 'abcdef4'}])
challenges = Challenges.create([{index: '5', title: 'Challenge 5',answer_token: 'abcdef5'}])