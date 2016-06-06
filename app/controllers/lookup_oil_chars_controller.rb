class LookupOilCharsController < ApplicationController
  def index
    @lookup_oil_chars = LookupOilChar.all
  end

  def show
    @lookup_oil_char = LookupOilChar.find(params[:id])
  end

  def new
    @lookup_oil_char = LookupOilChar.new
  end

  def create
    @lookup_oil_char = LookupOilChar.new
    @lookup_oil_char.char_code = params[:char_code]
    @lookup_oil_char.description = params[:description]

    if @lookup_oil_char.save
      redirect_to "/lookup_oil_chars", :notice => "Lookup oil char created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lookup_oil_char = LookupOilChar.find(params[:id])
  end

  def update
    @lookup_oil_char = LookupOilChar.find(params[:id])

    @lookup_oil_char.char_code = params[:char_code]
    @lookup_oil_char.description = params[:description]

    if @lookup_oil_char.save
      redirect_to "/lookup_oil_chars", :notice => "Lookup oil char updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lookup_oil_char = LookupOilChar.find(params[:id])

    @lookup_oil_char.destroy

    redirect_to "/lookup_oil_chars", :notice => "Lookup oil char deleted."
  end
end
