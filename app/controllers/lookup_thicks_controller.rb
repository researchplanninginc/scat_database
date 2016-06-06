class LookupThicksController < ApplicationController
  def index
    @lookup_thicks = LookupThick.all
  end

  def show
    @lookup_thick = LookupThick.find(params[:id])
  end

  def new
    @lookup_thick = LookupThick.new
  end

  def create
    @lookup_thick = LookupThick.new
    @lookup_thick.thick_code = params[:thick_code]
    @lookup_thick.description = params[:description]

    if @lookup_thick.save
      redirect_to "/lookup_thicks", :notice => "Lookup thick created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lookup_thick = LookupThick.find(params[:id])
  end

  def update
    @lookup_thick = LookupThick.find(params[:id])

    @lookup_thick.thick_code = params[:thick_code]
    @lookup_thick.description = params[:description]

    if @lookup_thick.save
      redirect_to "/lookup_thicks", :notice => "Lookup thick updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lookup_thick = LookupThick.find(params[:id])

    @lookup_thick.destroy

    redirect_to "/lookup_thicks", :notice => "Lookup thick deleted."
  end
end
