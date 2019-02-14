class OrdersController < ApplicationController
  def create
    subscription = Subscription.find(params[:subscription_id])
    current_user.update(subscription_id:subscription.id)
    order  = Order.create!(subscription_id: subscription.id, amount: subscription.price, state: 'pending', user: current_user)
    redirect_to new_order_payment_path(order)
  end
def show
  @order = Order.find(params[:id])
  @subscription = Subscription.find(@order.subscription_id)
 end
end









