

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
  password: 'test'
)

