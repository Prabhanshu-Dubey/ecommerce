# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


['admin', 'moderator'].each do |name| 
	Role.find_or_create_by(name: name)
end

adminRole = Role.find_by_name('admin')
user = User.create!(first_name: 'admin', email: 'admin@gmail.com', password: '12345678', password_confirmation: '12345678')
user.role = adminRole
user.save!