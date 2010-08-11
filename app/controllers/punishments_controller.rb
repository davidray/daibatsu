class PunishmentsController < ApplicationController
  def index
    @punishments = Punishment.all
  end
  
  def show
    @punishment = Punishment.find(params[:id])
  end
  
  def new
    @punishment = Punishment.new
  end
  
  def create
    @punishment = Punishment.new(params[:punishment])
    if @punishment.save
      flash[:notice] = "Successfully created punishment."
      redirect_to @punishment
    else
      render :action => 'new'
    end
  end
  
  def edit
    @punishment = Punishment.find(params[:id])
  end
  
  def update
    @punishment = Punishment.find(params[:id])
    if @punishment.update_attributes(params[:punishment])
      flash[:notice] = "Successfully updated punishment."
      redirect_to @punishment
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @punishment = Punishment.find(params[:id])
    @punishment.destroy
    flash[:notice] = "Successfully destroyed punishment."
    redirect_to punishments_url
  end
end
