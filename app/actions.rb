# Homepage (Root path)
get '/' do
  erb :index
end

get '/account_page' do  
  erb :'users/account_page'
end

get '/sign_up' do 
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

get '/products' do 
  erb :'products/products'
end