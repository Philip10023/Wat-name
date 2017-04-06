# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#


  Meetup.create(name: "chillzone", mid: 1, description: "a place to hang")
  User.create(provider: "Sovernet", uid: 1, username: "hank", email: "deez@nuts.com", avatar_url: "https://i.ytimg.com/vi/67UXB3Kci1Y/maxresdefault.jpg")
