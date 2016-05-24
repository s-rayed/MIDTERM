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
  password: 'test'
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
  password: 'test'
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
  password: 'test'
)

user4 = User.create!(
  first_name: 'homer',
  last_name: 'simpson',
  email: 'homersimpson@gmail.com',
  address: '723 evergreen terrace',
  city: 'springfield',
  postal_code: 'M3N1A6',
  province: 'ON',
  paypal_email: 'homersimpson@gmail.com',
  password: 'test'
)

user5 = User.create!(
  first_name: 'sara',
  last_name: 'silver',
  email: 'sarasilver@gmail.com',
  address: '321 nowhere st',
  city: 'toronto',
  postal_code: 'L3B1C6',
  province: 'ON',
  paypal_email: 'sarasilver@gmail.com',
  password: 'test'
)

user6 = User.create!(
  first_name: 'marc',
  last_name: 'kuo',
  email: 'marckuo@gmail.com',
  address: '949 somewhere st',
  city: 'toronto',
  postal_code: 'M5N4C9',
  province: 'ON',
  paypal_email: 'marckuo@gmail.com',
  password: 'test'
)

user7 = User.create!(
  first_name: 'marie',
  last_name: 'daley',
  email: 'marie@gmail.com',
  address: '123 prince st',
  city: 'toronto',
  postal_code: 'M2K1L7',
  province: 'ON',
  paypal_email: 'marie@gmail.com',
  password: 'test' 
)

jose_product = Product.create(
  name: "Jose's Garden Pack",
  price: 8,
  frequency: 7,
  description: "Tulips, Dirt, Minerals",
  user_id: 1,
  url: "http://img-aws.ehowcdn.com/442x442p/photos.demandstudios.com/getty/article/74/138/86503007_XS.jpg",
  video_url: "/videos/garden.mp4"
)
sandy_product = Product.create(
  name: "Awkward Box",
  price: 10,
  frequency: 30,
  description: "Tampons and awkward stuff",
  user_id: 2,
  url: "http://mamamia-cdn.s3.amazonaws.com/wp-content/uploads/2013/01/tampons-pads-380x285.jpg",
  video_url: "/videos/awkward_box.mp4"
)

michelle_product = Product.create(
  name: "Sunglasses for Cats!",
  price: 15,
  frequency: 30,
  description: "Sunglasses for your cat OR STUFFED ANIMALS!!!",
  user_id: 3,
  url: "https://media.giphy.com/media/nzcb2ZQ2L48Za/giphy.gif",
  video_url: "/videos/cat.mp4"
)

homer_product = Product.create(
  name: "ToMacco",
  price: 10,
  frequency: 30,
  description: "Tomato seeds cross bred with Tobacco seeds! Theyre REFRESHINGLY ADDICTIVE...",
  user_id: 4,
  url: "https://sethsoasis.files.wordpress.com/2014/02/tomacco.jpg",
  video_url: "/videos/tomacco.mp4"
)

sara_product = Product.create(
  name: "Glossy Box",
  price: 9,
  frequency: 30,
  description: "Beauty supplies",
  user_id: 5,
  url: "https://1.bp.blogspot.com/-Ty2j8StYV_0/UVST-aXS3dI/AAAAAAAAACI/6watqylNrUg/s1600/box.jpg",
  video_url: "/videos/glossybox.mp4"
)

marc_product = Product.create(
  name: "Pie of the Month",
  price: 25,
  frequency: 30,
  description: "(√-1) (2^3) Σ (inverse cos(-1)) and it scratched me!",
  user_id: 6,
  url: "https://www.adafruit.com/includes/templates/adafruit2013/images/raspberrypi.png",
  video_url: "/videos/pi.mp4"
)

jose_tomacco_subscribed = Subscription.create(
  user_id: 1,
  product_id: 4
)

jose_pi_subscribed = Subscription.create(
  user_id: 1,
  product_id: 6
)

sandy_gardenpack_subscribed = Subscription.create(
  user_id: 2,
  product_id: 1
)

sandy_catglasses_subscribed = Subscription.create(
  user_id: 2,
  product_id: 3 
)

​michelle_awkward_subscribed = Subscription.create(
  user_id: 3,
  product_id: 2
)

michelle_glossy_subscribed = Subscription.create(
  user_id: 3,
  product_id: 5
)

homer_catglasses_subscribed = Subscription.create(
  user_id: 4,
  product_id: 3
)

homer_gardenpack_subscribed = Subscription.create(
  user_id: 4,
  product_id: 1
)

sara_tomacco_subscribed = Subscription.create(
  user_id: 5,
  product_id: 4
)

sara_awkward_subscribed = Subscription.create(
  user_id: 5,
  product_id: 2
)

michelle_glossy_subscribed = Subscription.create(
  user_id: 3,
  product_id: 5
)

michelle_pi_subscribed = Subscription.create(
  user_id: 3,
  product_id: 6
)

review_pi_sandy = Review.create(
  review: "Raspberry is the only flavor you got? What a rip!",
  user_id: 2,
  product_id: 6
)

review_awkward_marc = Review.create(
  review: "Thank you Awkward Box! Never will I ever feel awkward again!",
  user_id: 6,
  product_id: 2
)

review_sunglass_marie = Review.create(
  review: "My cat is funkaaay now!",
  user_id: 7,
  product_id: 3
)