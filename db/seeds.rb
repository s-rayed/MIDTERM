# Create main user
user = User.create!(
  first_name: 'jose',
  last_name: 'vasquez',
  email: 'josevasquez@gmail.com',
  address: '123 Fake St',
  city: 'toronto',
  postal_code: 'M3F1B6',
  province: 'ON',
  paypal_email: 'josevasquez@gmail.com',
  password: 'test',
  subscription_id: 2
)

user2 = User.create!(
  first_name: 'sandy',
  last_name: 'Geee',
  email: 'sandy@gmail.com',
  address: '124 Fake St',
  city: 'toronto',
  postal_code: 'M3F1B6',
  province: 'ON',
  paypal_email: 'sandy@gmail.com',
  password: 'test',
  subscription_id: 1
)

user3 = User.create!(
  first_name: 'michelle',
  last_name: 'alarie',
  email: 'michellealarie@gmail.com',
  address: '46 Spadina Ave',
  city: 'toronto',
  postal_code: 'M3F1B6',
  province: 'ON',
  paypal_email: 'sandy@gmail.com',
  password: 'test',
  subscription_id: 1
)

jose_product = Product.create(
  name: "Jose's Garden Pack",
  price: 8,
  frequency: 7,
  description: "Tulips, Dirt, Minerals",
  user_id: 1,
  url: "http://img-aws.ehowcdn.com/442x442p/photos.demandstudios.com/getty/article/74/138/86503007_XS.jpg",
  video_url: "/videos/houston.mp4"
)
sandy_product = Product.create(
  name: "Awkward Box",
  price: 10,
  frequency: 30,
  description: "Tulips, Dirt, Minerals",
  user_id: 2,
  url: "http://mamamia-cdn.s3.amazonaws.com/wp-content/uploads/2013/01/tampons-pads-380x285.jpg",
  video_url: "/videos/fresh.mp4"
)
bb_product = Product.create(
  name: "Weekly Bad B****es",
  price: 100,
  frequency: 7,
  description: "Hoes, Condoms, Hennesey",
  user_id: 3,
  url: "http://img.maniadb.com/images/album/116/116242_1_f.jpg",
  video_url: "/videos/google.mp4"
)
subscription_jose1 = Subscription.create(
  user_id: 1,
  product_id: 3

)
subscription_jose2 = Subscription.create(
  user_id: 2,
  product_id: 1
)
​subscription_sandy = Subscription.create(
  user_id: 3,
  product_id: 2
)