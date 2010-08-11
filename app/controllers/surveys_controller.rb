class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end
  
  def new 
    @values = %w(Never Rarely Occassionally Sometimes Always)
    @survey = Survey.new  
    Punishment.all.each do |p|
      @survey.responses.build(:punishment => p) 
    end
  end
  
  def create
    @survey = Survey.new(params[:survey])
    if @survey.save
      flash[:notice] = "Successfully created survey."
      redirect_to results_path
    else
      render :action => 'new'
    end
  end
end
