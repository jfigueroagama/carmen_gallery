# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
 user.name                   "Michael Hartl"
 user.email                  "mhartl@example.com"
 user.password               "foobar"
 user.password_confirmation  "foobar"
end

Factory.sequence :email do |n|
 "person-#{n}@example.com"
end
# By using the symbol ':artwork', we get Factory Girl to simulate the Artwork model.
Factory.define :artwork do |artwork|
 artwork.name                 "Artwork"
 artwork.email                "artwork@carmen-gallery.com"
 artwork.art                  "painting"
end
# By using the symbol ':micropost', we get Factory Girl to simulate the Micropost model.
Factory.define :micropost do |micropost|
 micropost.name               "Josue Figueroa"
 micropost.email              "jfigueroa@example.com"
 micropost.content            "Good post"
 micropost.association        :artwork
end
