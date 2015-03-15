class WordsController < ApplicationController
  def new
  	@word = Word.new
  end

  def create
  	@word = Word.new(word_params)
  	if @word.save
  		@name = Word.last.name.upcase
  		Word.last.update(name: @name)
  		redirect_to game_index_path
  	else
  		render 'new'
  	end
  end


  private
		def word_params
			params.require(:word).permit(:name)	
		end

end
