class ProfileController < ApplicationController
  before_filter :authenticate_user!

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to profile_show_path, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @user = User.find(current_user.id)
  end

  private 
    def user_params
      params.require(:user).permit(:avatar)
    end
end
