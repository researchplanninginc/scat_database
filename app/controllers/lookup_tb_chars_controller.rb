class LookupTbCharsController < ApplicationController
  def index
    @lookup_tb_chars = LookupTbChar.all
  end

  def show
    @lookup_tb_char = LookupTbChar.find(params[:id])
  end

  def new
    @lookup_tb_char = LookupTbChar.new
  end

  def create
    @lookup_tb_char = LookupTbChar.new
    @lookup_tb_char.char_code = params[:char_code]
    @lookup_tb_char.description = params[:description]

    if @lookup_tb_char.save
      redirect_to "/lookup_tb_chars", :notice => "Lookup tb char created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lookup_tb_char = LookupTbChar.find(params[:id])
  end

  def update
    @lookup_tb_char = LookupTbChar.find(params[:id])

    @lookup_tb_char.char_code = params[:char_code]
    @lookup_tb_char.description = params[:description]

    if @lookup_tb_char.save
      redirect_to "/lookup_tb_chars", :notice => "Lookup tb char updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lookup_tb_char = LookupTbChar.find(params[:id])

    @lookup_tb_char.destroy

    redirect_to "/lookup_tb_chars", :notice => "Lookup tb char deleted."
  end
end
