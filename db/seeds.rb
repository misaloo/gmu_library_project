# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# create author
tolkien = Author.where(name: 'J.R.R. Tolkien').first_or_create!(nationality: 'English', dob: '1892-01-03', awards: 'Great Award', biography: 'Early Life John Ronald Reuel Tolkien was born on January 3, 1892, in Bloemfontein, South Africa, to English parents. At the age of three his mother brought him ...', image_url: 'http://upload.wikimedia.org/wikipedia/commons/b/b4/Tolkien_1916.jpg')
seuss = Author.where(name: 'Dr. Seuss').first_or_create!(nationality: 'American', dob: '1904-02-03', awards: 'Caldecott Medal, Peabody Award, Pulitzer', biography: 'heodor Seuss Geisel was born in Springfield, Massachusetts, to Theodor Robert and Henrietta (Seuss) Geisel.[4][5] All of his grandparents were German immigrants.[6] His father managed the family brewery and was later appointed to supervise Springfield public park system by Mayor John A. Denison[7] after the brewery closed because of Prohibition.[8] Mulberry Street in Springfield, made famous in Dr. Seuss first children book And to Think That I Saw It on Mulberry Street!, is less than a mile southwest of his boyhood home on Fairfield Street. Geisel was raised a Lutheran.[9] Geisel enrolled at Springfield Central High School in 1917 and graduated in 1921. He took an art class as a freshman and later became manager of the school soccer team.', image_url: 'http://ecx.images-amazon.com/images/I/51Rmbpdgh3L._UX250_.gif')



User.where(name: 'Admin').first_or_create!(password_digest: BCrypt::Password.create('password'), user_id: 'Admin1', admin: true, password: 'password', password_confirmation: 'password')
