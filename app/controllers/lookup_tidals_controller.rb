class LookupTidalsController < ApplicationController
  def index
    @lookup_tidals = LookupTidal.all
  end

  def show
    @lookup_tidal = LookupTidal.find(params[:id])
  end

  def new
    @lookup_tidal = LookupTidal.new
  end

  def create
    @lookup_tidal = LookupTidal.new
    @lookup_tidal.tidal_code = params[:tidal_code]
    @lookup_tidal.description = params[:description]

    if @lookup_tidal.save
      redirect_to "/lookup_tidals", :notice => "Lookup tidal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lookup_tidal = LookupTidal.find(params[:id])
  end

  def update
    @lookup_tidal = LookupTidal.find(params[:id])

    @lookup_tidal.tidal_code = params[:tidal_code]
    @lookup_tidal.description = params[:description]

    if @lookup_tidal.save
      redirect_to "/lookup_tidals", :notice => "Lookup tidal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lookup_tidal = LookupTidal.find(params[:id])

    @lookup_tidal.destroy

    redirect_to "/lookup_tidals", :notice => "Lookup tidal deleted."
  end
end
