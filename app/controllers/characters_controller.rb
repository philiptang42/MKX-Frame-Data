class CharactersController < ApplicationController
  def index
    @characters = Character.all.order('name ASC')
  end

end
