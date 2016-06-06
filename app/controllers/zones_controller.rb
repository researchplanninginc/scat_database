class ZonesController < ApplicationController
  def index
    @zones = Zone.all
    respond_to do |format|
      format.html
      format.csv { send_data @zones.to_csv}
    end
  end

  def show
    @zone = Zone.find(params[:id])
  end

  def new
    @zone = Zone.new
  end

  def create
    @zone = Zone.new
    @zone.zone_id = params[:zone_id]
    @zone.zone_name = params[:zone_name]
    @zone.survey_id = params[:survey_id]
    @zone.tidal_zone = params[:tidal_zone]
    @zone.width = params[:width]
    @zone.oil_dist = params[:oil_dist]
    @zone.oil_thick = params[:oil_thick]
    @zone.oil_char = params[:oil_char]
    @zone.substr = params[:substr]
    @zone.tb_cnt = params[:tb_cnt]
    @zone.tb_area = params[:tb_area]
    @zone.tb_arunit = params[:tb_arunit]
    @zone.tb_mavsize = params[:tb_mavsize]
    @zone.tb_ = params[:tb_]
    @zone.lgsize = params[:lgsize]
    @zone.tb_type = params[:tb_type]
    @zone.p_canopy = params[:p_canopy]
    @zone.p_oilbot = params[:p_oilbot]
    @zone.p_oiltop = params[:p_oiltop]
    @zone.esi = params[:esi]
    @zone.oil_cat = params[:oil_cat]
    @zone.source = params[:source]
    @zone.zone_comm = params[:zone_comm]

    if @zone.save
      redirect_to "/zones", :notice => "Zone created successfully."
    else
      render 'new'
    end
  end

  def edit
    @zone = Zone.find(params[:id])
  end

  def update
    @zone = Zone.find(params[:id])

    @zone.zone_id = params[:zone_id]
    @zone.zone_name = params[:zone_name]
    @zone.survey_id = params[:survey_id]
    @zone.tidal_zone = params[:tidal_zone]
    @zone.width = params[:width]
    @zone.oil_dist = params[:oil_dist]
    @zone.oil_thick = params[:oil_thick]
    @zone.oil_char = params[:oil_char]
    @zone.substr = params[:substr]
    @zone.tb_cnt = params[:tb_cnt]
    @zone.tb_area = params[:tb_area]
    @zone.tb_arunit = params[:tb_arunit]
    @zone.tb_mavsize = params[:tb_mavsize]
    @zone.tb_ = params[:tb_]
    @zone.lgsize = params[:lgsize]
    @zone.tb_type = params[:tb_type]
    @zone.p_canopy = params[:p_canopy]
    @zone.p_oilbot = params[:p_oilbot]
    @zone.p_oiltop = params[:p_oiltop]
    @zone.esi = params[:esi]
    @zone.oil_cat = params[:oil_cat]
    @zone.source = params[:source]
    @zone.zone_comm = params[:zone_comm]

    if @zone.save
      redirect_to "/zones", :notice => "Zone updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @zone = Zone.find(params[:id])

    @zone.destroy

    redirect_to "/zones", :notice => "Zone deleted."
  end
end
