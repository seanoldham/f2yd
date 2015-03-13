class ChargesController < ApplicationController
	before_filter :require_login, :except => :new

	def new
	end

	def create
		# Amount in cents
		@amount = 199
		# Used for payment confirmation page
		@dollar_amount = (@amount / 100.0)

		customer = Stripe::Customer.create(
			:email 	=> current_user.email,
			:card 	=> params[:stripeToken],
			:plan => 'f2yd-4'
		)

		charge = Stripe::Charge.create(
			:customer 		=> customer.id,
			:amount 			=> @amount,
			:description 	=> 'Forms to Your Door customer',
			:currency			=> 'usd'
		)

		current_user.customer_id = customer.id
		current_user.save!
	
	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to charges_path
	end

	def destroy
		Stripe.api_key = ENV['SECRET_KEY']
		customer = Stripe::Customer.retrieve(current_user.customer_id)
		customer.delete
	end
end
