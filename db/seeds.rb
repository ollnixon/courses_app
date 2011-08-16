# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create(:name => 'Ruby & Rails Bootcamp', 
              :description => 'Learn how to develop high-quality web applications fast using the renowned web framework that powers Twitter, Groupon, Github, Basecamp and more.',
              :start_date => "2011-08-17")