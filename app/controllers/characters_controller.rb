class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :delete]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end
end
