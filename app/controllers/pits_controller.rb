class PitsController < ApplicationController
  def index
    @pits = Pit.all
    respond_to do |format|
      format.html
      format.csv { send_data @pits.to_csv}
    end

  end

  def show
    @pit = Pit.find(params[:id])
  end

  def new
    @pit = Pit.new
  end

  def create
    @pit = Pit.new
    @pit.pit_id = params[:pit_id]
    @pit.pit_name = params[:pit_name]
    @pit.survey_id = params[:survey_id]
    @pit.tidal_zone = params[:tidal_zone]
    @pit.p_depth = params[:p_depth]
    @pit.p_oil_char = params[:p_oil_char]
    @pit.p_oil_bot = params[:p_oil_bot]
    @pit.p_oil_top = params[:p_oil_top]
    @pit.p_oil_dist = params[:p_oil_dist]

    if @pit.save
      redirect_to "/pits", :notice => "Pit created successfully."
    else
      render 'new'
    end
  end

  def edit
    @pit = Pit.find(params[:id])
  end

  def update
    @pit = Pit.find(params[:id])

    @pit.pit_id = params[:pit_id]
    @pit.pit_name = params[:pit_name]
    @pit.survey_id = params[:survey_id]
    @pit.tidal_zone = params[:tidal_zone]
    @pit.p_depth = params[:p_depth]
    @pit.p_oil_char = params[:p_oil_char]
    @pit.p_oil_bot = params[:p_oil_bot]
    @pit.p_oil_top = params[:p_oil_top]
    @pit.p_oil_dist = params[:p_oil_dist]

    if @pit.save
      redirect_to "/pits", :notice => "Pit updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @pit = Pit.find(params[:id])

    @pit.destroy

    redirect_to "/pits", :notice => "Pit deleted."
  end
end
