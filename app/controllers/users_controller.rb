class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      redirect_to "show"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :category_id, :mentor_id, :email)
  end

end
