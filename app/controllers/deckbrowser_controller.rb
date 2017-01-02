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
    if @deck.save
      redirect_to "/"#browse_decks
    else
      render 'new'
    end
  end

  def update
    @deck = Deck.find(params[:id])
    if @deck.update(deck_params)
      redirect_to "/"#browse_decks
    else
      render 'edit'
    end
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to browse_decks
  end
  private
  def deck_params
    params.permit(:bordercolour, :maxcards, :name, :borderthickness, :backgroundimage, :backgroundcolour)
  end
end
