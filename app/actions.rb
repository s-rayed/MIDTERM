# Homepage (Root path)
helpers do
  def current_user
    User.find(session[:id]) if session[:id]
  end
end

get '/' do
  erb :index
end

get '/account_page' do
  erb :'users/account_page'
end

get '/sign_up' do 
  erb :'/users/sign_up'
end

post '/login' do
  if @user = User.find_by(email: params[:email], password: params[:password])
    session[:id] = @user.id
    erb :index
  else
    session[:error] = "session failure"
    erb :index
  end
end

get '/sign_up' do
  @user = User.new
  erb :'/users/sign_up'
end

post '/sign_up' do
  @user = User.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    address: params[:address],
    city: params[:city],
    province: params[:province],
    postal_code: params[:postal_code],
    paypal_email: params[:paypal_email],
    password: params[:password]
    )
  if @user.save
    redirect '/'
  else
    erb :'/users/sign_up'
  end
end

get '/create_subscription' do
  erb :'/users/account_page'
end

post '/create_subscription' do
  @product = Product.new(
    name: params[:name],
    price: params[:price],
    frequency: params[:frequency],
    description: params[:description],
    user_id: session[:id],
    url: params[:url],
    video_url: params[:video_url]
    )
  if @product.save
    puts "Subscription successfully created"
    erb :'/products/subscription_confirmation'
  else
    erb :'/products/create_subscription'
  end
end

post '/subscription/:id/delete' do
  @subscription = Subscription.find(params[:id])
  if @subscription.destroy
    # confirmation message for destruction
    redirect '/account_page'
  end
end

get '/products' do 
  erb :'products/products'
end

get '/products/:id' do
  @product = Product.find(params[:id])
  erb :'/products/product_details'
end

post '/products/:id/add' do
  @create_subscription_association = Subscription.new(
    user_id: current_user.id,
    product_id: params[:id]
    )
  if @create_subscription_association.save
    # confirmation message for subscription creation
    redirect '/account_page'
  else
    redirect '/products/:id/add'
  end
end

post '/products/:id/delete' do
  @product = Product.find_by(params[:id])
  if @product.destroy
    # confirmation message for destruction
    redirect '/account_page'
  end
end

post '/reviews' do
  @review = Review.create(
    user_id: current_user.id,
    product_id: params[:id],
    review: params[:review]
    )
  if @review.save
   redirect '/products'
  end
end

post '/review/:id/delete' do
 @review = Review.find(params[:id]) 
 if @review.destroy
   redirect '/products'
 end
end

get '/users/update_subscription/:id' do
 erb :'/users/update_subscription'
end

post '/users/update_subscription/:id/update' do
 @update_prod = Product.update(
   name: params[:name],
   price: params[:price],
   frequency: params[:frequency],
   description: params[:description],
   user_id: session[:id],
   url: params[:url]
   )
 if @update_prod.save
   erb :'/account_page'
 else
   erb :'/account_page'
 end
end

post '/users/update_subscription/:id/delete' do
@delete_prod = Product.find(params[:id]) 
if @delete_prod.destroy
  redirect '/account_page'
end
end

get '/logout' do
  session.clear
  redirect '/'
end