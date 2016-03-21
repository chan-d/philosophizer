# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Blog.destroy_all

user1_data = {
	name: "Test2",
	username: "testty mcgee",
	email: "test@test.com",
	password: "test",
	description: "i like turtles"
}
user1 = User.create(user1_data)
