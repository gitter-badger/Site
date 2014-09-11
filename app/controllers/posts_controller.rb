class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
    end
  def show
        @post_attachments = @post.post_attachments.all
  end

  # GET /posts/new
  def new
    @post = Post.new
    @post_attachment = @post.post_attachments.build
  end

  # GET /posts/1/edit
  def edit
  end 
 
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
     #    params[:post_attachments]['avatar'].each do |a|
      #    @post_attachment = @post.post_attachments.create!(:avatar => a, :post_id => @post.id)
      # end
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :mr, :vg, :tp, :wa,:couns)
    end
  # def check_permissions
   	
  # end
end
