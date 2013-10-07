class CommentsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.new(comment_params)
  end

  private

  def comment_params
    params[:comment].permit(:comments)
  end
end
