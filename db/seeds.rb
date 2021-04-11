# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Role.create(
#     role_name: "super_admin"
# )
# Role.create(
#     role_name: "admin"
# )

# Role.create(
#     role_name: "normal"
# )

# User.create(
#     name: "Admin",
#     email: "admin@lehiep.com",
#     password: "123456",
#     password_confirmation: "123456",
#     role_id: 1

# )

# Category.create(
#     category_name: "iphone"
# )
# Category.create(
#     category_name: "samsung"
# )
# Category.create(
#     category_name: "xiaomi"
# )
# Category.create(
#     category_name: "huawei"
# )
# Category.create(
#     category_name: "oppo"
# )
# Category.create(
#     category_name: "vivo"
# )


10.times do |n|
    User.create(
        name: "taikhoan so #{n+1}",
        email: "user_#{n+2}@lehiep.com",
        password: "123456",
        password_confirmation: "123456", 
        role_id: 3
    )

end