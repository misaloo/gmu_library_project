# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# create author
tolkien = Author.where(name: 'J.R.R. Tolkien').first_or_create!(nationality: 'English', dob: '1892-01-03', awards: 'Great Award', biography: 'Early Life John Ronald Reuel Tolkien was born on January 3, 1892, in Bloemfontein, South Africa, to English parents. At the age of three his mother brought him ...', image_url: 'http://upload.wikimedia.org/wikipedia/commons/b/b4/Tolkien_1916.jpg')
seuss = Author.where(name: 'Dr. Seuss').first_or_create!(nationality: 'American', dob: '1904-02-03', awards: 'Caldecott Medal, Peabody Award, Pulitzer', biography: 'Theodor Seuss Geisel was born in Springfield, Massachusetts, to Theodor Robert and Henrietta (Seuss) Geisel.[4][5] All of his grandparents were German immigrants.[6] His father managed the family brewery and was later appointed to supervise Springfield public park system by Mayor John A. Denison[7] after the brewery closed because of Prohibition.[8] Mulberry Street in Springfield, made famous in Dr. Seuss first children book And to Think That I Saw It on Mulberry Street!, is less than a mile southwest of his boyhood home on Fairfield Street. Geisel was raised a Lutheran.[9] Geisel enrolled at Springfield Central High School in 1917 and graduated in 1921. He took an art class as a freshman and later became manager of the school soccer team.', image_url: 'http://ecx.images-amazon.com/images/I/51Rmbpdgh3L._UX250_.gif')


#Book.where(title: 'The Hobbit').first_or_create!(isbn: '9780582186552', author: 'J.R.R. Tolkien', genre:'Fantasy', abstract:'This is an example', total_in_library: 5, published_on: '20000112')

Book.where(title: 'The Cat in The Hat').first_or_create!(isbn: '978-0394800011', author: 'Dr.Seuss', genre:'Children Book', abstract:'Poor Dick and Sally. It is cold and wet and they are stuck in the house with nothing to do . . . until a giant cat in a hat shows up, transforming the dull day into a madcap adventure and almost wrecking the place in the process! Written by Dr. Seuss in 1957 in response to the concern that "pallid primers [with] abnormally courteous, unnaturally clean boys and girls were leading to growing illiteracy among children, The Cat in the Hat (the first Random House Beginner Book) changed the way our children learn how to read.', pages: 72, image_cover_url: 'http://ecx.images-amazon.com/images/I/517qxR55yML._SL500_PIsitb-sticker-arrow-big,TopRight,35,-73_OU01_SS100_.jpg', total_in_library: 5, published_on: '20040213')

Book.where(title: 'The Lorax').first_or_create!(isbn: '978-0394800011', author: 'Dr.Seuss', genre:'Children Book', abstract:'Long before saving the earth became a global concern, Dr. Seuss, speaking through his character the Lorax, warned against mindless progress and the danger it posed to the earth is natural beauty. ' , pages: 72 , image_cover_url: 'http://ecx.images-amazon.com/images/I/51SM5e%2BY7KL._SL500_PIsitb-sticker-arrow-big,TopRight,35,-73_OU01_SS100_.jpg', total_in_library: 2, published_on: '20040213')

Book.where(title: 'Fox in Socks').first_or_create!(isbn: '978-0394800387', author: 'Dr.Seuss', genre:'Children Book', abstract: 'This Fox is a tricky fox. He  will try to get your tongue in trouble." Dr. Seuss gives fair warning to anyone brave enough to read along with the Fox in Socks, who likes to play tongue-twisting games with his friend Mr. Knox. Here is an easy game to play. Here is an easy thing to say.... New socks. Two socks. Whose socks? Sue is socks. But Mr. Fox Socks is not about to let Knox off so easy. Soon Goo-Goose is choosing to chew chewy gluey blue goo, while tweetle beetles battle with paddles in a puddle (in case you were wondering, that is called a tweetle beetle puddle paddle battle.' , pages: 62, image_cover_url: 'http://ecx.images-amazon.com/images/I/51X3F7GQGXL._SL500_PIsitb-sticker-arrow-big,TopRight,35,-73_OU01_SS100_.jpg', total_in_library: 2, published_on: '20040213')

User.where(name: 'Admin').first_or_create!(password_digest: BCrypt::Password.create('password'), admin: true, password: 'password', password_confirmation: 'password')
User.where(name: 'Tim').first_or_create!(password_digest: BCrypt::Password.create('password'), admin: false, password: 'password', password_confirmation: 'password')
