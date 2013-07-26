class TweetsController < ApplicationController

  before_action :check_user_login

  def new
    @tweet = Tweet.new
    # a shell
  end

  def create
   # @tweet = Tweet.create(content: params[:tweet][:content])
     @tweet = Tweet.new(tweet_params)
     @tweet.user = @current_user
     @tweet.save
    # create a Tweet with content set to the value of params[:tweet] (a subhash of the hash params) associated with the key content.

    redirect_to tweets_path
  end

  def show
    @tweet = Tweet.find(params[:id])
    # load up the nth tweet into the variable @tweet
  end

  def index
    @tweets = Tweet.all
    #load up the collection of tweets into the variable @tweets
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    #find it and destroy it (in shopping cart app the first line is dried up into a method that is done before several actions)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:content)
  end

  def check_user_login
    @current_user = User.find(session[:user_id])
  end
end
