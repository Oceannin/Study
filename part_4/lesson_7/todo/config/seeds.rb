User.destroy_all

hash_users = 10.times.map do
  {
    name: FFaker::Internet.user_name[0...16],
    email: FFaker::Internet.safe_email
  }
end

User.create! hash_users
