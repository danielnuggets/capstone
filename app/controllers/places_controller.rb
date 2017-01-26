class PlacesController < ApplicationController
  def home
    @jobs = Job.all
  end

  def index
    @jobs = Job.all
    if params[:job_id] && Job.exists?(params[:job_id])
      @job = Job.find(params[:job_id])
      @results = JobByCity.where(job_id: @job.id).order(score: :desc).limit(6)
      @cities = []
      @results.each do |result|
        @cities << result.city
      end
    elsif params[:job_title] && Job.exists?(title: params[:job_title])
      @job = Job.find_by(title: params[:job_title])
      #take the job that the user entered, sort the job_by_cities table by score in descending order, grabbing the first 5.
      @results = JobByCity.where(job_id: @job.id).order(score: :desc).limit(6)
      @cities = []
      @results.each do |result|
        @cities << result.city
      end
    else
      flash[:error] = "Select an occupation from the drop-down."
      redirect_to "/home"
    end
  end

  def show
    @city = City.find(params[:id])
    @job = Job.find(params[:job_id])
    response = Unirest.get("http://api.wunderground.com/api/c20ea3216bd8b3f3/conditions/q/#{@city.state}/#{@city.name}.json").body

    if response["current_observation"]
      @weather = response["current_observation"]
    else
      @weather = "N/A"
    end

  end


  def compare
    @results = [
      JobByCity.find(params[:a]),
      JobByCity.find(params[:b]),
      JobByCity.find(params[:c]),
      JobByCity.find(params[:d]),
      JobByCity.find(params[:e]),
      JobByCity.find(params[:f])
    ]
  end
end
