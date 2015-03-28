# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.create(name: 'John Smith', email: 'jsmith@sky.co.uk')
Customer.create(name: 'Ma Lee', email: 'mlee@sky.co.uk')
Customer.create(name: 'Alberto Suarez', email: 'asuarez@sky.co.uk')
Customer.create(name: 'Mary Barber', email: 'mbarber@sky.co.uk')

Reward.create(description: 'CHAMPIONS LEAGUE FINAL TICKET')
Reward.create(description: 'KARAOKE PRO MICROPHONE')
Reward.create(description: 'PIRATES OF THE CARIBBEAN COLLECTION')