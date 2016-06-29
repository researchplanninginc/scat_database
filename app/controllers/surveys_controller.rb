class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
    respond_to do |format|
      format.html
      format.csv { send_data @surveys.to_csv}
    end
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
  end

  def create
    @people = Person.all
    @survey = Survey.new
    @survey.survey_id = params[:survey_id]
    @survey.segment_id = params[:segment_id]
    @survey.seg_list = params[:seg_list]
    @survey.surv_date = params[:surv_date]
    @survey.surv_dint = params[:surv_dint]
    @survey.start_time = params[:start_time]
    @survey.stop_time = params[:stop_time]
    @survey.tide_hgt = params[:tide_hgt]
    @survey.surv_type = params[:surv_type]
    @survey.surv_per1 = params[:surv_per1]
    @survey.surv_per2 = params[:surv_per2]
    @survey.surv_per3 = params[:surv_per3]
    @survey.surv_per4 = params[:surv_per4]
    @survey.surv_per5 = params[:surv_per5]
    @survey.surv_per6 = params[:surv_per6]
    @survey.surv_comm = params[:surv_comm]

    if @survey.save
      redirect_to "/surveys", :notice => "Survey created successfully."
    else
      render 'new'
    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])

    @survey.survey_id = params[:survey_id]
    @survey.segment_id = params[:segment_id]
    @survey.seg_list = params[:seg_list]
    @survey.surv_date = params[:surv_date]
    @survey.surv_dint = params[:surv_dint]
    @survey.start_time = params[:start_time]
    @survey.stop_time = params[:stop_time]
    @survey.tide_hgt = params[:tide_hgt]
    @survey.surv_type = params[:surv_type]
    @survey.surv_per1 = params[:surv_per1]
    @survey.surv_per2 = params[:surv_per2]
    @survey.surv_per3 = params[:surv_per3]
    @survey.surv_per4 = params[:surv_per4]
    @survey.surv_per5 = params[:surv_per5]
    @survey.surv_per6 = params[:surv_per6]
    @survey.surv_comm = params[:surv_comm]

    if @survey.save
      redirect_to "/surveys", :notice => "Survey updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @survey = Survey.find(params[:id])

    @survey.destroy

    redirect_to "/surveys", :notice => "Survey deleted."
  end
end
