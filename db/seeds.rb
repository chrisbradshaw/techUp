
topic1 = Topic.create(name: "James Jackson")
topic2 = Topic.create(name: "Roberta Rock")
topic3 = Topic.create(name: "Daniel Duck")
topic4 = Topic.create(name: "Amanda Djidjinski")
topic5 = Topic.create(name: "Zoe Zack")
topic6 = Topic.create(name: "Bill Burray")
topic7 = Topic.create(name: "Charlie Chuck")

puts "creating conferences data"
pub1 = Conference.create(title: "ABC sadsadPublisher", location: "NY", date: Time.now, topic_id: topic1.id)
puts "conf #{pub1.inspect}"
pub2 = Conference.create(title: "ABC sadasPublisher", location: "TX", date: Time.now, topic_id: topic2.id)
puts "conf #{pub2.inspect}"
pub3 = Conference.create(title: "ABC dasPublisher", location: "CO", date: Time.now, topic_id: topic3.id)
puts "conf #{pub3.inspect}"
pub4 = Conference.create(title: "ABC dsadasPblisher", location: "CO", date: Time.now, topic_id: topic1.id)
pub5 = Conference.create(title: "ABC sadasPublsher", location: "CO", date: Time.now, topic_id: topic1.id)
pub6 = Conference.create(title: "ABC dsadasPubliher", location: "C", date: Time.now, topic_id: Topic.find(1).id)

puts "*****"

user1 = User.create(username: "The Great Escape", name: "author7", email: "pub1@gmail.com")
user2 = User.create(username: "Saving Myself", name: "author6", email: "pub1@gmail.com")
user3 = User.create(username: "The Killer Doctors", name: "author5", email: "pub1@gmail.com")
user4 = User.create(username: "Marianne", name: "author4", email: "pub1@gmail.com")
user5 = User.create(username: "On the Verge of Salvation", name: "author4", email: "pub2@aol.com")
user6 = User.create(username: "Fields of L", name: "author3", email: "pub2@aol.com")
user7 = User.create(username: "Waterfront", name: "author2", email: "pub2@aol.com")
user8 = User.create(username: "Bored as Hell", name: "author6", email: "pub3@aol.com")
user9 = User.create(username: "History of the Silk Road", name: "author7", email: "pub3@aol.com")