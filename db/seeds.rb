User.destroy_all
Task.destroy_all
User.reset_pk_sequence
Task.reset_pk_sequence

puts "🌱 Seeding spices..."
User.create(
    user_name: "Yari"
)

User.create(
    user_name: "Austin"
)

User.create(
    user_name: "Remy"
)


categories = ["House", "Yard", "Groceries", "Park", "Pet"]
users_id = [1, 2, 3]

10.times do 
    Task.create(
        title: Faker::Lorem.sentence(word_count: 1),
        description: Faker::Lorem.sentence,
        category: categories.sample,
        user_id: users_id.sample
    )
end 
puts "✅ Done seeding!"
