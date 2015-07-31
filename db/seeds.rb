# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "alexbannon", password_digest: BCrypt::Password.create("alexbannon"), email: "alexbannon@gmail.com")
Pinboard.create(title: "Pictures of Bill Murray", user_id: User.first.id)
Pin.create(title: "Bill Murray at the Beach", picture_url: "http://www.fillmurray.com/390/390", content: "This is the best photo of Bill Murray Ever!", pinboard_id: Pinboard.first.id)
Pin.create(title: "Bill Murray at the Zoo", picture_url: "http://www.fillmurray.com/350/399", content: "Separate murray photo", pinboard_id: Pinboard.first.id)
Pin.create(title: "Bill Murray eating dinner", picture_url: "http://www.fillmurray.com/470/413", content: "Something else entirely", pinboard_id: Pinboard.first.id)
Pin.create(title: "Bill Murray relaxing all cool", picture_url: "http://www.fillmurray.com/444/444", content: "He's so dreamy", pinboard_id: Pinboard.first.id)
Pin.create(title: "Bill Murray outside da school", picture_url: "http://www.fillmurray.com/500/500", content: "I wish I could marry him.", pinboard_id: Pinboard.first.id)
Comment.create(content: "totally agree with everything", user_id: User.first.id, pin_id: Pin.all[0].id)
Comment.create(content: "totally agree with everything", user_id: User.first.id, pin_id: Pin.all[1].id)
Comment.create(content: "totally agree with everything", user_id: User.first.id, pin_id: Pin.all[2].id)
Comment.create(content: "totally agree with everything", user_id: User.first.id, pin_id: Pin.all[3].id)
Comment.create(content: "totally agree with everything", user_id: User.first.id, pin_id: Pin.all[4].id)

t.string  "content"
t.integer "user_id"
t.integer "pinboard_id"
