# Homepage (Root path)

enable :sessions
  def get_comment
    @cmt ||= @comment
  end
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
  user_id = session[:user].id
  
  @survival_points = Result.bmi_factor(User.find(user_id))
  @result = Result.random_result(params[:id])
  @result.body.gsub!('CODESUB', @survival_points.to_s)
  
  # set :point, @survival_points
  # @@point = @survival_points
  # binding.pry
  erb :result
end

get '/char' do
  @chars = Characteristic.all
  erb :characteristic
end

get '/result' do
  @result = Result.random_result(4)
  erb :result
end

get '/comment' do
  @comments = Comment.all.limit(10)
  erb :comment
end


get '/top_last_word' do
  @words = Comment.top_words
  erb :top_last_word
end


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
  erb :info
end

get '/vote/:user_id/:vote_id' do
  vote_comment = Comment.find(params[:vote_id])
  vote_comment.vote = vote_comment.vote + 1
  vote_comment.save

  @comment = Comment.find(params[:user_id])
  @comments = Comment.all.order(vote: :desc)


  erb :comment
end

post '/comment/new/:id/:result' do
  @comment = Comment.new(
    user_id: session[:user].id,
    result_id: params[:id],
    body: params[:body],
    result_full: params[:result]
    )

  @comment.save
  @comments = Comment.all.order(vote: :desc)
  erb :comment 

end

post '/user' do

  session[:user].weight = params[:weight]
  session[:user].height = params[:height]
  session[:user].save
  # binding.pry
  redirect '/char'
end

post '/char' do
  redirect '/era'
end
