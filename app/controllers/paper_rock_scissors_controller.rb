class PaperRockScissorsController <  ApplicationController
	def new
	end

	def show
		@computer_guess = rand(3) + 1
		@our_guess = params[:id].to_i

		case @computer_guess 
		when 1
			@our_guess == 2 ?	@result = "lost" : @result = "won"
		when 2
			@our_guess == 3 ? @result = "lost" : @result = "won"
		when 3
			@our_guess == 1 ? @result = "lost" : @result = "won"
		end

		if @computer_guess == @our_guess
			@result = "draw"
		end
	end

end

