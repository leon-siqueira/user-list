# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

request = JSON.parse(URI.open("https://randomuser.me/api/?format=json&results=30&inc=gender,name,email,Picture&nat=br&seed=giga").read)

request['results'].each do |result|
  user = User.new(name: "#{result['name']['first']} #{result['name']['last']}",
                  gender: result['gender'],
                  email: result['email'])
  user.save
  photo = URI.open(result['picture']['large'])
  user.photo.attach(io: photo, filename: "#{user.id}.jpg", content_type: 'image/jpg')
end
