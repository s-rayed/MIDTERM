require 'pry'
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