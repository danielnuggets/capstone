class PlacesController < ApplicationController
  def home
  end

  def index
    @job = Job.find_by(title: params[:job_title])

    #take the job that the user entered, sort the job_by_cities table by score in descending order, grabbing the first 5.
    @recommendations = JobByCity.where(job_id: @job.id).order(score: :desc).limit(5)
    @cities = []
    @recommendations.each do |recommendation|
      @cities << recommendation.city
    end
  end

  def show
    @city = City.find(params[:id])
    @job = Job.find(params[:job_id])
  end

  def compare
    @recommendation1 = JobByCity.find(params[:jbc1])
    @recommendation2 = JobByCity.find(params[:jbc2])
    @recommendation3 = JobByCity.find(params[:jbc3])
    @recommendation4 = JobByCity.find(params[:jbc4])
    @recommendation5 = JobByCity.find(params[:jbc5])
  end
end
