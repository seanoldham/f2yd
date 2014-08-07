class ChargesController < ApplicationController
	before_filter :require_login, :only => :create

	def new
	end

	def create
		# Amount in cents
		@amount = 999
		@dollar_amount = (@amount / 100.0)

		customer = Stripe::Customer.create(
			:email 	=> current_user.email,
			:card 	=> params[:stripeToken]
		)

		charge = Stripe::Charge.create(
			:customer 		=> customer.id,
			:amount 			=> @amount,
			:description 	=> 'Rails Stripe customer',
			:currency			=> 'usd'
		)
		@raw = request.raw_post
	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to charges_path
	end
end
