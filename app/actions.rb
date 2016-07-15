# Homepage (Root path)
enable :sessions

helpers do

end

get '/', '/index' do
  session.clear
  erb :index
end

get '/info' do
  
  erb :info
end

get '/era' do
  @eras = Era.all
  erb :era
end

get '/era/:id' do
  @result = Result.random_result(params[:id])
  erb :result
end

get '/char' do
  @chars = Characteristic.all
  erb :characteristic
end

get '/result' do
  @result = Result.random_result(4)
  # @result = Result.random_result(params[:era_id])
  erb :result
end

get '/comment' do
  @comments = Comment.all.limit(10)
  erb :comment
end

# get '/:era_id/result' do
#   @result = Result.random_result(params[:era_id])
#   erb :result
# end

get '/top_last_word' do
  @words = Comment.top_words
  erb :top_last_word
end

# get '/auth/github/callback' do
#   erb :info
# end

get '/auth/facebook/callback' do
  auth = request.env['omniauth.auth']
  user = User.create(
    fbid: auth[:uid], 
    name: auth[:info][:name],
    email: auth[:info][:email],
    image: auth[:info][:image]
    )
  session.clear
  session[:user] = user
  # binding.pry
  erb :info
end

post '/comment/new/:id' do
  @comment = Comment.new(
    user_id: session[:user].id,
    result_id: params[:id],
    body: params[:body] )

  @comment.save
  @comments = Comment.all.limit(10)
  erb :comment
  # session[:comment] = @comment
  # binding.pry
  # redirect '/comment'
end

post '/user' do
  session[:user].weight = params[:weight]
  session[:user].height = params[:height]
  session[:user].save
  redirect '/era'
end
