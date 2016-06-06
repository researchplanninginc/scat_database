class LookupSubstrsController < ApplicationController
  def index
    @lookup_substrs = LookupSubstr.all
  end

  def show
    @lookup_substr = LookupSubstr.find(params[:id])
  end

  def new
    @lookup_substr = LookupSubstr.new
  end

  def create
    @lookup_substr = LookupSubstr.new
    @lookup_substr.substr_code = params[:substr_code]
    @lookup_substr.description = params[:description]

    if @lookup_substr.save
      redirect_to "/lookup_substrs", :notice => "Lookup substr created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lookup_substr = LookupSubstr.find(params[:id])
  end

  def update
    @lookup_substr = LookupSubstr.find(params[:id])

    @lookup_substr.substr_code = params[:substr_code]
    @lookup_substr.description = params[:description]

    if @lookup_substr.save
      redirect_to "/lookup_substrs", :notice => "Lookup substr updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lookup_substr = LookupSubstr.find(params[:id])

    @lookup_substr.destroy

    redirect_to "/lookup_substrs", :notice => "Lookup substr deleted."
  end
end
