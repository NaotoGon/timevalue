class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    card = Card.find_by(user_id: current_user.id)

    redirect_to new_card_path and return unless card.present?

    customer = Payjp::Customer.retrieve(card.customer_token)
    @card = customer.cards.first
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
