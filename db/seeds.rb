# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

challenges = Challenges.create([{index: '1', title: 'Challenge 1',answer_token: '8A63DA12D92E639F'}])
challenges = Challenges.create([{index: '2', title: 'Challenge 2',answer_token: '676D9A04B99F1673'}])
challenges = Challenges.create([{index: '3', title: 'Challenge 3',answer_token: '757B5DEE77D50012'}])
challenges = Challenges.create([{index: '4', title: 'Challenge 4',answer_token: 'BA9CC28D07D19979'}])