class ResultsController < ApplicationController
  def index
    @values = %w(Never Rarely Occassionally Sometimes Always)
    @punishments = Punishment.all
  end
end
