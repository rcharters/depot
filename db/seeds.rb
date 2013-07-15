# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(title: 'Apple',
    description:
      %{<p>
          These are delicious, crunchy and sweet MacIntosh apples.
        </p>},
    image_url: 'apple.jpg',
    price: 1.49)

Product.create(title: 'Orange',
    description:
      %{<p>
          Sweet and delicious Flordia Navel Oranges.
        </p>},
    image_url: 'orange.jpg',
    price: 1.99)

Product.create(title: 'Banana',
    description:
      %{<p>
          Yummy ripe golden yellow Bananas from South America.
        </p>},
    image_url: 'banana.jpg',
    price: 0.49)