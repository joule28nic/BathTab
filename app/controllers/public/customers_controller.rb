class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!
  before_action :ensure_guest_user, only: [:edit]

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to my_page_path
    else
      render :edit
    end
  end

  def unsubscribe
  end

  def withdraw
    @customer = current_customer
    @customer.update(is_active: false)
    reset_session
    redirect_to root_path
  end

  def favorites
    @customer = current_customer
    favorites = Favorite.where(customer_id: current_customer.id).pluck(:facility_id)
    @facilities = Facility.find(favorites)
  end

  def reviews
    @customer = current_customer
    @reviews = @customer.reviews.includes(:facility)
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :email, :sex, :age)
  end

  def ensure_guest_user
    @customer = current_customer
    if @customer.guest_user?
      redirect_to my_page_path, notice: "ゲストユーザーはプロフィール編集画面へ遷移できません。"
    end
  end

end
