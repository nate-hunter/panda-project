class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: {status: 'ERROR', message: 'A new comment was not able to be created', data: @comment.errors}, status: :unproccessable_entity
    end
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  def update
    @comment.find(params[:id])
    if quote.update
      render json: @comment
    else
      render json: {status: 'ERROR', message: 'Comment not updated', data: @comment.errors}, status: :unproccessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json: {status: 'SUCCESS', message: 'Comment successfully deleted', data: @comment}, status: :ok
  end

  private

  def comment_params
    params.permit(:gif_id, :name, :comment)
  end
end
