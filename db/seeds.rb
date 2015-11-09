10.times do |i|
  User.create(email: "user_#{i}@email.com", password: "password", password_confirmation: "password")
end

15.times { Fabricate(:post) }
