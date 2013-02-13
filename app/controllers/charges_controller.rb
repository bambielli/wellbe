class ChargesController < ApplicationController
def new

end

def create
	# Amount in cents
  	@amount = params[:amount2]

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

	if @amount == '1500'
		curation = "2 Days";
	elsif @amount == '900'
		curation = "5 Days";
	else
		curation = "10 Days";
	end

	 User.find(params[:id]).update_attributes(:name => customer.id, :curation => curation)

	#UserSignup.notification.deliver
	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  render "create"
end
  def show
    	@user = User.find(params[:id])
    	@days = params[:days]

    	if @days == "2 Days - $15.00"
    		n_day = "2 Days";
    	elsif @days == "5 Days - $9.00"
    		n_day = "5 Days";
    	else
    		n_day = "10 Days";
    	end
    	User.find(params[:id]).update_attributes( :curation => n_day)
    	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

end
