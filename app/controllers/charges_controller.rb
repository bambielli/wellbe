class ChargesController < ApplicationController
def new
end

def create
	# Amount in cents
  	@amount = params[:amount]

	  customer = Stripe::Customer.create(
	    :email => 'example@stripe.com',
	    :card  => params[:stripeToken]
	  )

	 # Stripe::Charge.create(
	 #   :customer    => customer.id,
	  #  :amount      => @amount,
	   # :description => 'Rails Stripe customer',
	   # :currency    => 'usd'
	 # )

	 User.last.update_attributes(:name => customer.id, :curation => params[:curation])

	UserSignup.notification.deliver
	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  render "create"
end
end
