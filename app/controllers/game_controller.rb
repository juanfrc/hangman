class GameController < ApplicationController
	@@letters = []
	@@word = Word.last.name.split('')

  def index
  	@@letters = []
	@word = @@word  	
  end

  def receive
  	@@letter = params[:prueba]
  	@word = @@word  	

  	@@letters.push(@@letter)
  	@letter = @@letter
  	@letters = @@letters

  	render 'index'



  	#@@letter.chars.each_with_index do |character, index|
  	#	if @@letter = character
  	#		@@letters.push(params[:prueba]) 
  	#	end
  	#end
  end


end
