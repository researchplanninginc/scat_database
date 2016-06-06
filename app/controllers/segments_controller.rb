class SegmentsController < ApplicationController
  def index
    @segments = Segment.all
    respond_to do |format|
      format.html
      format.csv { send_data @segments.to_csv}
    end
  end

  def show
    @segment = Segment.find(params[:id])
  end

  def new
    @segment = Segment.new
  end

  def create
    @segment = Segment.new
    @segment.segment_id = params[:segment_id]
    @segment.esi_prim = params[:esi_prim]
    @segment.esi_sec = params[:esi_sec]
    @segment.back_cliff = params[:back_cliff]
    @segment.back_low = params[:back_low]
    @segment.back_beach = params[:back_beach]
    @segment.back_dune = params[:back_dune]
    @segment.back_wetl = params[:back_wetl]
    @segment.back_lag = params[:back_lag]
    @segment.back_delt = params[:back_delt]
    @segment.back_chan = params[:back_chan]
    @segment.back_man = params[:back_man]
    @segment.acc_along = params[:acc_along]
    @segment.acc_back = params[:acc_back]
    @segment.stage_back = params[:stage_back]
    @segment.acc_desc = params[:acc_desc]

    if @segment.save
      redirect_to "/segments", :notice => "Segment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @segment = Segment.find(params[:id])
  end

  def update
    @segment = Segment.find(params[:id])

    @segment.segment_id = params[:segment_id]
    @segment.esi_prim = params[:esi_prim]
    @segment.esi_sec = params[:esi_sec]
    @segment.back_cliff = params[:back_cliff]
    @segment.back_low = params[:back_low]
    @segment.back_beach = params[:back_beach]
    @segment.back_dune = params[:back_dune]
    @segment.back_wetl = params[:back_wetl]
    @segment.back_lag = params[:back_lag]
    @segment.back_delt = params[:back_delt]
    @segment.back_chan = params[:back_chan]
    @segment.back_man = params[:back_man]
    @segment.acc_along = params[:acc_along]
    @segment.acc_back = params[:acc_back]
    @segment.stage_back = params[:stage_back]
    @segment.acc_desc = params[:acc_desc]

    if @segment.save
      redirect_to "/segments", :notice => "Segment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @segment = Segment.find(params[:id])

    @segment.destroy

    redirect_to "/segments", :notice => "Segment deleted."
  end
end
