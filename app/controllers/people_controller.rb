class PeopleController < ApplicationController
  def index
    @people = Person.all
    respond_to do |format|
      format.html
      format.csv { send_data @people.to_csv}
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new
    @person.person_id = params[:person_id]
    @person.last_name = params[:last_name]
    @person.first_name = params[:first_name]
    @person.org = params[:org]

    if @person.save
      redirect_to "/people", :notice => "Person created successfully."
    else
      render 'new'
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    @person.person_id = params[:person_id]
    @person.last_name = params[:last_name]
    @person.first_name = params[:first_name]
    @person.org = params[:org]

    if @person.save
      redirect_to "/people", :notice => "Person updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @person = Person.find(params[:id])

    @person.destroy

    redirect_to "/people", :notice => "Person deleted."
  end
end
