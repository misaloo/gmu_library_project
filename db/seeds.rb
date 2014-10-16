# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# create author
tolkien = Author.where(name: 'J.R.R. Tolkien').first_or_create!(nationality: 'English', dob: '1892-01-03', awards: 'Great Award', biography: 'Early Life John Ronald Reuel Tolkien was born on January 3, 1892, in Bloemfontein, South Africa, to English parents. At the age of three his mother brought him ...', image_url: 'http://en.wikipedia.org/wiki/J._R._R._Tolkien#mediaviewer/File:Tolkien_1916.jpg')

Book.where(title: 'The Hobbit').first_or_create!(isbn: '9780582186552', author_id:tolkien, genre:'Fantasy', abstract:'This is an example')

User.where(name: 'Admin').first_or_create!(password_digest: BCrypt::Password.create('password'), user_id: 'Admin1', admin: true, password: 'password', password_confirmation: 'password')
