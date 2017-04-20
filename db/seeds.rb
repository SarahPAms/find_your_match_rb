Match.delete_all
User.delete_all


joe=User.create!( email: "joe@user.com", password: "abcd1234", name: "joe", admin: false)
mark=User.create!( email: "mark@user.com", password: "abcd1234", name: "mark", admin: false)
paul=User.create!( email: "paul@user.com", password: "abcd1234", name: "paul", admin: false)


match1=Match.create!( date: 1.days.from_now, matched_user: "paul", user: joe )
match2=Match.create!( date: 3.days.from_now, matched_user: "joe", user: mark )
match3=Match.create!( date: 4.days.from_now, matched_user: "mark", user: paul )
