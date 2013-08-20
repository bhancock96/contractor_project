get '/user/:id' do
  @user = User.find(params[:id])
  if @user.user_type == "homeowner"
    erb :homeowner_profile
  elsif @user.user_type == "contractor"
    erb :contractor_profile
  end
end

get '/user/:id/bio' do
  @user = User.find(params[:id])
  erb :bio
end

get '/user/:id/images' do
  erb :images
end

get '/user/:id/ratings' do
  erb :ratings
end

get '/user/:id/requests' do
  erb :requests
end

get '/user/:id/promotions' do
  erb :promotions
end


get '/logout' do
  @user = User.find(session[:user_id])
  session[:user_id] = nil
  redirect '/'
end


# ================ POST ROUTES =========================

post '/login' do
  @user = User.login(params)
  
  session[:user_id] = @user.id
  redirect "/user/#{@user.id}"
end

post '/register' do
  @user = User.new(params[:user])
  @user.user_type = params[:user_type]
  @user.save
  session[:user_id] = @user.id
  redirect "/user/#{@user.id}"
end
