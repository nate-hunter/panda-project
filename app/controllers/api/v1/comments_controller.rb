class Api::V1::CommentsController < ApplicationController
  def index
<<<<<<< HEAD

=======
    @comments = Comment.all
    render json: @comments
>>>>>>> 387b03ac18b1afabe2f3d7d2fbe0c5fadadf389f

  end

  def create
    @comment = Comment.create(comment_params)
    render json: @comment
  end

private

def comment_params
  params.permit(:name, :comment)
end

end
