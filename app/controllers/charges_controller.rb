class ChargesController < ApplicationController
	before_filter :require_login, :only => :create

	def new
	end

	def create
		# Amount in cents
		@amount = 0
		# Used for payment confirmation page
		@dollar_amount = (399 / 100.0)

		customer = Stripe::Customer.create(
			:email 	=> current_user.email,
			:card 	=> params[:stripeToken],
			:plan => 'f2yd-4'
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

		current_user.customer_id = ""
		current_user.save!
	end
end
