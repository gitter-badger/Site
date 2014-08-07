class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
# load_and_authorize_resource
  # GET /posts
  # GET /posts.json
  def index
    if current_admin.has_role? "admin" 
    @posts = Post.all
    else
    flash[:error] = "Access denied."
     redirect_to women_index_path
   end
    end
 #def check
 #  if admin
 #     @val=admin.has_role? "admin"
 #else 
 #   @val=false
 # end
 #return @val
 #end
  # GET /posts/1
  # GET /posts/1.json
  def show
#    if current_admin.has_role? "admin"
        @post_attachments = @post.post_attachments.all
 #   else
        redirect_to women_index_path
 #   end
  end

  # GET /posts/new
  def new
   if current_admin.has_role? "admin"
    @post = Post.new
    @post_attachment = @post.post_attachments.build
   else
      redirect_to women_index_path
   end
  end

  # GET /posts/1/edit
  def edit
#    authorize! :edit, Post
   if current_admin.has_role? "admin"
   else 
     redirect_to women_index_path
   end 
 end

  # POST /posts
  # POST /posts.json
  def create
    if current_admin.has_role? "admin"
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
    else
      redirect_to_women_index_path
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
   if current_admin.has_role? "admin"
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
   else
         redirect_to_women_index_path
   end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
#     authorize! :destroy, @post
    if current_admin.has_role? "admin"
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
    else
          redirect_to_women_index_path
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
