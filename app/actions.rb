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

get '/products' do 
  erb :'products/products'
end