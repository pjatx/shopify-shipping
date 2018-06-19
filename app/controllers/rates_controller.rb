class RatesController < ApplicationController

	protect_from_forgery with: :null_session

	def index

		rates = {
			"rates": [
				{
					:service_name => "Juice Society",
		      :service_code => "JSWS",
					:description => "Complimentary shipping for our wholesale customers",
		      :total_price => 0.to_s,
		      :currency => "USD"
				}
			]
    }

    render :json => rates
		puts response.body
	end
end
