class QuotesController < ApplicationController
	def index
		@quote = Quote.first
	end

	def new
		@quote = Quote.new
	end

	def create
		Quote.create(quote_params)
		redirect_to root_path
	end

	private

	def quote_params
		params.require(:quote).permit(:player, :team)
	end
end

=begin
I know that this isn't the best name for this
I also know I can change it later
=end