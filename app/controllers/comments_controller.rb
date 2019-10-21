# typed: false

# module HotfixForRailsActsAsParanoid
#   refine Banal::Brainstorm do
#     Banal::Brainstorm.class_eval do
#       default_scope lambda { with_deleted }
#     end
#   end
# end

class CommentsController < ApplicationController
  # using HotfixForRailsActsAsParanoid

  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json

  def create
    ActiveRecord::Base.transaction do
      Banal::Brainstorm.class_eval do
        default_scope lambda { with_deleted }
      end

      @comment = Comment.new(comment_params)

      @comment.save!

      Banal::Brainstorm.class_eval do
        default_scope lambda {  where(paranoid_default_scope) }
      end

      HACK(hack = lambda do
        mop = MegaOsPath
        .find(@comment.banal_brainstorm_id)
        
        if mop.comment.blank?
          mop.comment = @comment
          mop.save!
        end

        @comment.banal_brainstorm_id = Banal::Brainstorm.first.id
      end)

      hack.call

      redirect_to comments_path
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    ActiveRecord::Base.transaction do
      uid = request.remote_ip.sub('.', '000')
      uid = uid.sub('::', '000').to_i
      search = Searchjoy::Search.where(user_id: uid).first
      @comment.destroy
      search.convert(@comment)
    end
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:banal_brainstorm_id, :comment_text, :parent_id)
    end
end
