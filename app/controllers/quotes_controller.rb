class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def new
		@quote = Quote.new

    def create
    	Quote.create(quote_params)
    	redirect_to root_path
    end

    def quote_params
    	params.require(:quote).permit(:saying, :author)
    end
  end 
end
