class DeckbrowserController < ApplicationController
  def browse_decks
    @decks = Deck.all
  end
  
  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def create
    @deck = Deck.new(deck_params)

    #do something or whatever
  end

  def update
    @deck = Deck.find(params[:id])

    #do something
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy

    #do something
  end
  private
  def deck_params
  params.require(:deck, :maxcards, :name).permit(:bordercolour, :borderthickness, :backgroundimage, :backgroundcolour)
  end
end
