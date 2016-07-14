# Homepage (Root path)
enable :sessions

helpers do

end

get '/', '/index' do
  erb :index
end

get '/info' do
  
  erb :info
end

get '/era' do
  @eras = Era.all
  erb :era
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

get '/:era_id/result' do
  @result = Result.random_result(params[:era_id])
  erb :result
end

get '/top_last_word' do
  @words = Comment.top_words
  erb :top_last_word
end

get '/auth/github/callback' do
  erb :info
end


post '/comment/new' do
  comment = Comment.new(
    user_id: session[user].id,
    era_id: params[:era_id],
    result_id: params[:result_id],
    body: params[:body] )

  comment.save
  redirect :result
end

post '/user/new' do
  erb :era
end