class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new(Tweet_params)

    @tweet.save
  end
  def show

  end

  private
    def tweet_params
      params.require(:tweet).permit(:text, :location)
    end
  end
