User.delete_all

joe=User.create!( email: "joe@user.com", password: "abcd1234", name: "joe", admin: false)
mark=User.create!( email: "mark@user.com", password: "abcd1234", name: "mark", admin: false)
