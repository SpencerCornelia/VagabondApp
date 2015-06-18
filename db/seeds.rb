	# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Post.delete_all

u1 = User.create(first_name: 'John', last_name: 'Doe', email: 'john@doe.com', password: 'test', current_city: 'San Francisco')
u2 = User.create(first_name: 'Jane', last_name: 'Doe', email: 'jane@doe.com', password: 'test', current_city: 'Los Angeles')

pt1 = Post.create(title: 'Hello, world!', body: 'This is my very first post.')
pt2 = Post.create(title: 'Hello, again!', body: 'This is my second post.')
pt3 = Post.create(title: 'Hello, for the third time!', body: 'This is my third post and it is
much longer so that I can check and see if I should add any limits to
the post length. For example, if I was someone who loved to write and write
and write, would that be a problem? Would you still love me? Would you wish
that I was not quite so verbose? I would love to know your real thoughts.')

p1 = Place.create(name: 'London')
p2 = Place.create(name: 'Gibraltar')
p3 = Place.create(name: 'San Francisco')
