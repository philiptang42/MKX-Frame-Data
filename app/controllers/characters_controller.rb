class CharactersController < ApplicationController

  def index
    @characters = Character.all.order('name ASC')
  end

  def show
    @character = Character.find(params[:id])
    @move = @character.moves
  end

  def new
    @character = Character.new
  end

  def create
    character_params['name']
    @character = Character.new(character_params)

    if @character.save
      redirect_to @character
      flash[:success] = 'A New Challenge Appears'
    else
      flash[:errors] = @character.errors.full_messages.join(". ")
      render :new
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    flash[:success] = "Character Deleted"
    redirect_to "/"
  end

  private

  def character_params
    params.require(:character).permit(:name, :db_name, :description)
  end

end
