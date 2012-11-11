 # encoding: utf-8
class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @user_group= Group.find_all_by_owner(@user.id )
    followed_user = FollowUser.find_all_by_user_id(@user.id )
    @follow_user = Array.new
    
    followed_user.each do |user|
      followed = User.find(user.user_id)
      @follow_user << followed
    end
    
    followed_group = FollowGroup.find_all_by_user_id(@user.id )
    @follow_group= Array.new
    
    followed_group.each do |group|
      followed = Group.find(group.user_id)
      @follow_group << followed
    end
    
    
  #  @followed_group = Group.find_all_by_owner(@user.id ).follow_groups()
    
    
    if params[:idx] 
        @choose_to_show = params[:idx]
      else
        @choose_to_show = 1
      end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def concern
    @follow_user = FollowUser.create(:user_id => current_user.id, :followed_user_id =>params[:id])
    return render :json => {:status => 200, :success => true}
  end
end
