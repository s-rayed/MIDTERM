

# Create main user
user = User.create!(
  first_name: 'jose',
  last_name: 'vasquez',
  email: 'josevasquez@gmail.com',
  address: '123 fake st',
  city: 'toronto',
  postal_code: 'm3f1b6',
  province: 'ON',
  paypal_email: 'josevasquez@gmail.com',
  password: 'test',
  subscription_id: 2
)

user = User.create!(
  first_name: 'sandy',
  last_name: 'Geee',
  email: 'sandy@gmail.com',
  address: '124 fake st',
  city: 'toronto',
  postal_code: 'm3f1b6',
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
  url: "http://previews.123rf.com/images/galdzer/galdzer1205/galdzer120500072/13502382-Heap-dirt-Isolated-on-white-background-Stock-Photo-dirt-mound-mud.jpg"
)

sandy_product = Product.create(
  name: "Awkward Box",
  price: 10,
  frequency: 30,
  description: "Tulips, Dirt, Minerals",
  user_id: 2,
  url: "http://previews.123rf.com/images/galdzer/galdzer1205/galdzer120500072/13502382-Heap-dirt-Isolated-on-white-background-Stock-Photo-dirt-mound-mud.jpg"
)
subscription_jose1 = Subscription.create(
  user_id: 1,
  product_id: 2

)
​
subscription_sandy = Subscription.create(
  user_id: 2,
  product_id: 1

)
​


