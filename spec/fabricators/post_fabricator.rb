Fabricator(:post) do
  title { FFaker::Product.product }
  content { FFaker::Lorem.paragraph }
  user { User.order('RANDOM()').first }
  image { FFaker::Avatar.imageb }
end
