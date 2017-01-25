class PlacesController < ApplicationController
  def home
    @jobs = Job.all
  end

  def index
    @job = Job.find_by(title: params[:job_title])

    #take the job that the user entered, sort the job_by_cities table by score in descending order, grabbing the first 5.
    @results = JobByCity.where(job_id: @job.id).order(score: :desc).limit(5)
    p @results
    @cities = []
    @results.each do |result|
      @cities << result.city
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
      JobByCity.find(params[:e])
    ]
  end
end
