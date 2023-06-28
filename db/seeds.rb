# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Company.create(name: "KPMG")
Company.create(name: "PWC")

30.times do
    Quote.create(
        company:[Company.first, Company.second].sample,
        name: Faker::Lorem.sentence(word_count: 3)
    )
end

90.times do
    LineItemDate.create(
        quote: Quote.all.sample,
        date: Faker::Date.between(from: 1.month.ago, to: Date.today),
    )
end


User.create(email: "accountant@kpmg.co.ke", password: "password", company: Company.first)
User.create(email: "manager@kpmg.co.ke", password: "password", company: Company.first)
User.create(email: "eavesdropper@pwc.com", password: "password", company: Company.second)

270.times do
    LineItem.create(
        line_item_date: LineItemDate.all.sample,
        name: Faker::Lorem.sentence(word_count: 2),
        description: Faker::Lorem.sentence(word_count: 10),
        quantity: Faker::Number.between(from: 1, to: 100),
        unit_price: Faker::Number.decimal(l_digits: 2, r_digits: 2)
    )
end