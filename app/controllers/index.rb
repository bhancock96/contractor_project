get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/login' do
  erb :_login
end



# ************* POST ROUTES ********************

post '/login' do
  # if type is homeowner - create homeowner
  # elsif type is contractor - create contractor

end
