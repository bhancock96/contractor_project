get '/user/:id/images' do
  @user = User.find(params[:id])
  erb :images
end

post '/user/:id/images' do
  u = User.find(session[:user_id])
  @uploaded_file = u.photos.create(:filepath => params[:upload])
  @uploaded_file.save!
  # thumbnail = @uploaded_file.thumbnail(200,200)
  # "<a href='#{@uploaded_file.filepath}'>#{@uploaded_file.filepath}</a>"
  redirect "/user/#{u.id}/images"
end
