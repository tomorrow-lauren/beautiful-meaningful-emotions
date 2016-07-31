get '/login' do
  erb :"/users/login"
end

post '/login' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    session[:user_id] = @user.id
    redirect "/"
  else
    redirect "/login"
  end
end

get '/new' do
  erb :"/users/new"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect "/login"
  else
    redirect "/new"
  end
end

get '/logout' do
  session.clear[:user_id]
  redirect "/"
end

get '/users/:user_id' do
  @user = User.find(params[:user_id])
  erb :"/users/show"
end