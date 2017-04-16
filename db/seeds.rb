# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"
User.create(id: 1, email: "test@test.com", password: 12345678, nickname: "仮メン太郎")

CSV.foreach('db/tweets.csv') do |row|
  Tweet.create(text: row[1], image: row[2], created_at: row[3], updated_at: row[4], user_id: row[5])
end
