class GamesController < ApplicationController
  def new
    # display a new random grid and a form
    # { ('a'..'z').to_a[rand(10)] }.join
    @grid = []
    10.times { @grid << ('A'..'Z').to_a[rand(10)] }
  end

  def score
    # debugger
    # the form will be submitted with POST to the score action
    # comparing the word with letters
    # @score = params[:word, :letters] - calc
    @grid = params[:grid]
  #   @word = if @grid.englishword?
  #               "Sorry but '#{@word}' can't be built out of '#{@letters}'"
  #             # elsif
  #             #   "Sorry but '#{@word}' does not seem to be a valid English word."
  #             # else
  #             #   "Congratulations! '#{@word}' is a valid English word"
  #             end
  end

  # private

  # def englishword(attempt)
  #   url = "https://wagon-dictionary.herokuapp.com/#{attempt}"
  #   dictionary_serialized = URI.open(url).read
  #   JSON.parse(dictionary_serialized)
  # end
end
