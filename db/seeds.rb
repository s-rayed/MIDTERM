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

user2 = User.create!(
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


bb_product = Product.create(
  name: "Weekly Bad B****es",
  price: 100,
  frequency: 7,
  description: "Hoes, Condoms, Hennesey",
  user_id: 3,
  url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiT3dyG8-jMAhVEyj4KHUyMAQ4QjRwIBw&url=http%3A%2F%2Fwww.stereogum.com%2F562162%2Fkanye-west-the-joy-feat-pete-rock-jay-z-charlie-wilson-kid-cudi%2Fmp3s%2F&bvm=bv.122448493,d.cWw&psig=AFQjCNFKd9lHBzKFVP3fb_29RMiezkZxow&ust=1463842137057035"
)
subscription_jose1 = Subscription.create(
  user_id: 1,
  product_id: 3

)

subscription_jose2 = Subscription.create(
  user_id: 1,
  product_id: 2
)
​
subscription_sandy = Subscription.create(
  user_id: 2,
  product_id: 1

)
​


