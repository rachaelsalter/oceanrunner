class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def new
		@quote = Quote.new

    def quote_params
    	params.require(:quote).permit(:saying, :author)
    end

    def create
    	@quote = Quote.create(quote_params)
    	if @quote.invalid?
    		flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    	redirect_to root_path

    def about
      end 

    end
   end 
 end 
end 