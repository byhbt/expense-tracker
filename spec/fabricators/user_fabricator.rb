Fabricator(:unconfirmed_user, class_name: User) do
  email { "user_#{FFaker::Lorem.word}_#{SecureRandom.hex(5)}@example.com" }
  password 'Abcd1234'
end
