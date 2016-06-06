class LookupEsisController < ApplicationController
  def index
    @lookup_esis = LookupEsi.all
  end

  def show
    @lookup_esi = LookupEsi.find(params[:id])
  end

  def new
    @lookup_esi = LookupEsi.new
  end

  def create
    @lookup_esi = LookupEsi.new
    @lookup_esi.esi_code = params[:esi_code]
    @lookup_esi.description = params[:description]

    if @lookup_esi.save
      redirect_to "/lookup_esis", :notice => "Lookup esi created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lookup_esi = LookupEsi.find(params[:id])
  end

  def update
    @lookup_esi = LookupEsi.find(params[:id])

    @lookup_esi.esi_code = params[:esi_code]
    @lookup_esi.description = params[:description]

    if @lookup_esi.save
      redirect_to "/lookup_esis", :notice => "Lookup esi updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lookup_esi = LookupEsi.find(params[:id])

    @lookup_esi.destroy

    redirect_to "/lookup_esis", :notice => "Lookup esi deleted."
  end
end
