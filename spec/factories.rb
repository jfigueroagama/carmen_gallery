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

Factory.define :artwork do |artwork|
  artwork.name              "My Artwork"
  artwork.email             "artwork@example.com"
  artwork.art               "painting"
end

Factory.define :micropost do |micropost|
  micropost.name            "Josue Figueroa"
  micropost.email           "jfigueroa@example.com"
  micropost.content         "Good post"
  micropost.association     :artwork
end
