class PaymentsController < ApplicationController
  before_action :set_order
  require 'date'

  def new


  end

  def create
    # ...
customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @order.amount_cents,
    description:  "Payment for subscription #{@order.subscription_id} for order #{@order.id}",
    currency:     @order.amount.currency
  )
  current_user.update(subscription_start_date:Date.today)
  if (@order.subscription_id == 4)
     current_user.update(subscription_end_date:Date.today + 1.month)
   elsif  (@order.subscription_id == 5)
     current_user.update(subscription_end_date:Date.today + 3.month)
   else
    current_user.update(subscription_end_date:Date.today + 12.month)

  end
  @order.update(payment: charge.to_json, state: 'paid')
  redirect_to order_path(@order)


rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to new_order_payment_path(@order)

  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end
end























