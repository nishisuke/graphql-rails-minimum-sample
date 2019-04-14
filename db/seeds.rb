# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

raise unless User.count.zero?

%i[nishi suke tarou].each.with_index do |name, index|
  User.create!(name: name, age: index * 10 + [*0..9].sample)
end

User.all.to_a.combination(2).with_index do |(user, mate), i|
  next if i.modulo(3).zero?
  Friend.create!(user_id: user.id, mate_user_id: mate.id)
end
