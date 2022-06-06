class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :edit_title, :delete]

  PARTIAL_MAPPING = {
    title_edit: "characters/shared/edit_title"
  }
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

  def edit_title
    respond_to do |format|
      format.html
      format.text { render partial: "characters/shared/edit_title", locals: { character: @character }, formats: [:html] }
    end
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
