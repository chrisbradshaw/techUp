
topic1 = Topic.create(name: "Ember.js")
topic2 = Topic.create(name: "React.js")
topic3 = Topic.create(name: "Angular.js")
topic4 = Topic.create(name: "Ruby on Rails")
topic5 = Topic.create(name: "SQL")
topic6 = Topic.create(name: "Python")
topic7 = Topic.create(name: "Elixir")


puts "creating conference data"
pub1 = Conference.create(title: "Ember.js: A Superior Framework", location: "New York, NY", description: Faker::Hacker.say_something_smart, date: Faker::Date.between(1.year.ago, 1.year.from_now), topic_id: topic1.id)
puts "conf #{pub1.inspect}"
pub2 = Conference.create(title: "React.js and the DOM", location: "Dallas, TX", description: Faker::Hacker.say_something_smart, date: Faker::Date.between(1.year.ago, 1.year.from_now), topic_id: topic2.id)
puts "conf #{pub2.inspect}"
pub3 = Conference.create(title: "Angular 2.0: What's Next", location: "San Francisco, CA", description: Faker::Hacker.say_something_smart, date: Faker::Date.between(1.year.ago, 1.year.from_now), topic_id: topic3.id)
puts "conf #{pub3.inspect}"
pub4 = Conference.create(title: "Building an API with Rails 5", location: "Denver, CO", description: Faker::Hacker.say_something_smart, date: Faker::Date.between(1.year.ago, 1.year.from_now), topic_id: topic4.id)
pub5 = Conference.create(title: "Ember Front End with Rails API", location: "Salt Lake City, UT", description: Faker::Hacker.say_something_smart, date: Faker::Date.between(1.year.ago, 1.year.from_now), topic_id: topic5.id)
pub6 = Conference.create(title: "History of the Silk Road", location: "Los Angeles, CA", description: Faker::Hacker.say_something_smart, date: Faker::Date.between(1.year.ago, 1.year.from_now), topic_id: topic6.id)

puts "*****"

user1 = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email)
user2 = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email)
user3 = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email)
user4 = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email)
user5 = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email)
user6 = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email)
user7 = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email)
user8 = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email)
user9 = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email)