Match.delete_all
User.delete_all


joe=User.create!( email: "joe@user.com", password: "abcd1234", name: "joe", admin: false)
mark=User.create!( email: "mark@user.com", password: "abcd1234", name: "mark", admin: false)
paul=User.create!( email: "paul@user.com", password: "abcd1234", name: "paul", admin: false)
john=User.create!( email: "john@user.com", password: "abcd1234", name: "john", admin: false)
sue=User.create!( email: "sue@user.com", password: "abcd1234", name: "sue", admin: true)


match1=Match.create!( date: 1.days.ago, matched_user: "paul", user: joe )
match2=Match.create!( date: 3.days.ago, matched_user: "joe", user: mark )
match3=Match.create!( date: 0.days.from_now, matched_user: "mark", user: joe )
match4=Match.create!( date: 4.days.from_now, matched_user: "paul", user: sue )
