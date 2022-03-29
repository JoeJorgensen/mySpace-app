# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Friend.destroy_all

u1 = User.create(email:'test222@test.com', password:5245153, followed_friends:[1,2])
u2 = User.create(email:'test333@test.com', password:123456, followed_friends:[3,4])


Friend.create(name:"David Swindell", bio: 'I love to ride a bike every now and then. Enjoy coffee, whisky and red wine.', avatar:'href="https://uiuxjobsboard.com/random-users-generator/images/imageM6.jpg"' )
Friend.create(name:"Emma Coleman", bio: 'I like jazz music and bacon. Learning new things is one of my obsessions.', avatar:'href="https://uiuxjobsboard.com/random-users-generator/images/imageF11.jpg"' )
Friend.create(name:"James Garcia", bio: "I'm a happy person with mediocre dance moves. Originally from San Diego.", avatar:'href="https://uiuxjobsboard.com/random-users-generator/images/imageM20.jpg"' )
Friend.create(name:"Eleanor Thomas", bio: "I see video and web as a way to reach and inspire people.", avatar:'href="https://uiuxjobsboard.com/random-users-generator/images/imageF18.jpg"' )

