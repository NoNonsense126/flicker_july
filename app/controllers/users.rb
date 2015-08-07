post '/users/signup' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect to "/albums"
  else
    erb :index
  end
end

post '/users/login' do
  @user = User.authenticate(params[:user])
  if @user
    session[:id] = @user.id
    redirect to "/albums"
  else
    redirect to "/"
  end
end

delete '/logout' do
  session[:id] = nil
end