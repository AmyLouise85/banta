# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@r1 = Room.create(name:'Sci-fi')
@r2 = Room.create(name:'Hello Kitty')
@r3 = Room.create(name:'Gossip Club')
@r4 = Room.create(name:'Zen X')
@r5 = Room.create(name:'Bikes')
@r6 = Room.create(name:'Kawaii Culture')
@r7 = Room.create(name:'Small Furry Pets')
@r8 = Room.create(name:'Dogs')
@r9 = Room.create(name:'Rooms')



@u1 = User.create(name:'Amy', email:'amy@email.com', password:'pass123', bio: 'Loves to ride guinea pigs', location: 'Walthamstow', rooms: [@r6, @r2, @r7, @r9])
@u2 = User.create(name:'Kitty', email:'kitty@email.com', password:'pass123', rooms: [@r8, @r2, @r6, @r9])
@u3 = User.create(name:'Jordan', email:'Jordan@email.com', password:'pass123', rooms: [@r9])
@u4 = User.create(name:'Sheraa', email:'power@email.com', password:'pass123', rooms: [@r4, @r2, @r3, @r9])
@u5 = User.create(name:"Bella", password: "pass123", email: "bella@dog.com", bio: '', location: '', rooms: [@r1, @r2, @r3, @r9])
@u6 = User.create(name:'Lettuice', email:'saladfingers@email.com', password:'pass123', rooms: [@r9])
@u7 = User.create(name:"Userman", password: "pass123", email: "user@userman", bio: 'A user, not a loser', location: 'yo mamma', rooms: [@r9])
@u8 = User.create(name:"Vikram", password: "pass123", email: "vik@hotguy", bio: 'loves furry critters!', location: 'London', rooms: [@r9])
@u9 = User.create!(name: 'John', email:'John@you.com', password: 'pass123', rooms: [@r9])
@u10 = User.create!(name: 'Bob', email:'bob@yo.com', password: 'pass123', bio: 'Bob loves round things.', location: 'Stoke', rooms: [@r9])
@u11 = User.create!(name: 'Jess', email:'jess@yo.com', password: 'pass123', bio: 'Jess is a mess', location: 'Londers', rooms: [@r1, @r2, @r3, @r5, @r9])

Message.create!(user: @u1, room: @r1, body: 'Hey yo yo its me')
Message.create!(user: @u5, room: @r3, body: 'Bark bark Im a dog')
Message.create!(user: @u5, room: @r4, body: 'Grr bite bite')
Message.create!(user: @u1, room: @r4, body: 'No dont bite!')
Message.create!(user: @u8, room: @r4, body: 'Bite her!')
Message.create!(user: @u7, room: @r4, body: 'Imma use you!')
Message.create!(user: @u3, room: @r4, body: "jordo's here, guys!")
Message.create!(user: @u4, room: @r4, body: 'yay')
Message.create!(user: @u1, room: @r4, body: 'ouch')
Message.create!(user: @u1, room: @r9, body: 'Kerri, what the heck is this place?')
Message.create!(user: @u8, room: @r9, body: "She's not here, yo")
Message.create!(user: @u5, room: @r9, body: "Duh, it's a room for meditation. Roooooooooooooooooooom")
Message.create!(user: @u1, room: @r9, body: 'Shut up you dumb dog')
Message.create!(user: @u9, room: @r9, body: 'Hey, shes a smrt dog')
Message.create!(user: @u1, room: @r9, body: 'Sorry, Bella.')
