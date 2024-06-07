# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
  { first_name: "test admin", last_name: "user", phone: "1234567890", email: "admin@example.com", role: 0 },
  { first_name: "test manager", last_name: "user", phone: "1234567891", email: "manager@example.com", role: 1 },
  { first_name: "test user", last_name: "user", phone: "1234567892", email: "user@example.com", role: 2 }
])
  
MusicRecord.create([
  { title: "test title", photo: "test_photo.jpg", price: 20.0, description: "test descripton", damage_assessment: "test damage_assessment" }
])
  