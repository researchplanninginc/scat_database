class LookupPitCharsController < ApplicationController
  def index
    @lookup_pit_chars = LookupPitChar.all
  end

  def show
    @lookup_pit_char = LookupPitChar.find(params[:id])
  end

  def new
    @lookup_pit_char = LookupPitChar.new
  end

  def create
    @lookup_pit_char = LookupPitChar.new
    @lookup_pit_char.char_code = params[:char_code]
    @lookup_pit_char.description = params[:description]

    if @lookup_pit_char.save
      redirect_to "/lookup_pit_chars", :notice => "Lookup pit char created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lookup_pit_char = LookupPitChar.find(params[:id])
  end

  def update
    @lookup_pit_char = LookupPitChar.find(params[:id])

    @lookup_pit_char.char_code = params[:char_code]
    @lookup_pit_char.description = params[:description]

    if @lookup_pit_char.save
      redirect_to "/lookup_pit_chars", :notice => "Lookup pit char updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lookup_pit_char = LookupPitChar.find(params[:id])

    @lookup_pit_char.destroy

    redirect_to "/lookup_pit_chars", :notice => "Lookup pit char deleted."
  end
end
