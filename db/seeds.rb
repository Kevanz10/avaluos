# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   Mayor.create(name: 'Emanuel', city: cities.first)user = User.new
user = User.new
user.username = 'admin'
user.password = 'a0min10'
user.admin = 'true'
user.save!
