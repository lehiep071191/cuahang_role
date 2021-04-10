# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(
    role_name: "super_admin"
)
Role.create(
    role_name: "admin"
)

Role.create(
    role_name: "normal"
)

User.create(
    name: "Admin",
    email: "admin@lehiep.com",
    password: "123456",
    password_confirmation: "123456",
    role_id: 1

)