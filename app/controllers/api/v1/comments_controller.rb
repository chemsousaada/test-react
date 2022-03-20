class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
    render json: @comments
  end

  # GET /comments/1 or /comments/1.json
  def show
    render json: @comment
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment, status:200
    else
      render json: {error:@comment.errors}, status:301
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    if @comment.update(comment_params)
      render json: @comment, status:200
    else
      render json: {error:@comment.errors}, status:301
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    if @comment.destroy
      render json: {message:"Supprimé avec succès."}, status:200
    else
      render json: {error:@comment.errors}, status:301
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:message, :note, :product_id_id)
    end
end
