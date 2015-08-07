post '/albums/:album_id/photos' do
  @album = Album.find(params[:album_id])
  @user = User.find(session[:id])
  @photo = @album.photos.new(params[:photo])
  @photo.user = @user
  if @photo.save
    redirect to "/photos/#{@photo.id}"
  else
    redirect to "/albums/#{@album.id}"
  end
end

get '/photos/:id' do
  @photo = Photo.find(params[:id])
  @album = @photo.album
  erb :"photos/show"
end