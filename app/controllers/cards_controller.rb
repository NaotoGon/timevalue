class CardsController < ApplicationController
  def new
  end

  def create
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    customer = Payjp::Customer.create(
    description: 'test',
    card: params[:card_token]
    )
    if card.save
      redirect_to root_path
    else
      redirect_to "new" # カード登録画面
    end
  end
end
