class GameController < ApplicationController
	@@letters = []
	@@answer = []
	@@word = Word.last.name.split('')
	@@size = @@word.count

	


  def index
  	@@letters = [] 
  	@@answer = [] 	
	@word = @@word  	
	@answer = @@answer
  end

  def receive
  	@@letter = params[:prueba] 	
  	@@letters.push(@@letter)
  	@letter = @@letter

  	count = 0

  	@@word.each do |x|
  		if x == @letter
  			@@answer[count] = @@letter
			count += 1  			
		else
			count += 1
  		end
  	end

	@word = @@word 
	@letter = @@letter
	@letters = @@letters
	@answer = @@answer
  	render 'index'
  end


end
