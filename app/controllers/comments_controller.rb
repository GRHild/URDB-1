class CommentsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.new(comment_params)
<<<<<<< HEAD
  
=======

>>>>>>> 1319bf24f2154fda62176a2eba528f669544384c
    if @comment.save
      redirect_to @comment.movie, notice: 'Comment was successfully created.'
    else
      redirect_to @comment.movie, alert: 'Comment was not successfully created.'
    end
<<<<<<< HEAD

=======
>>>>>>> 1319bf24f2154fda62176a2eba528f669544384c
  end

  private

  def comment_params
<<<<<<< HEAD
    params[:comment].permit(:comments)
=======
    params[:comment].permit(:user, :comment)
>>>>>>> 1319bf24f2154fda62176a2eba528f669544384c
  end
end
