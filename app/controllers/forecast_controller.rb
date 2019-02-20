class ForecastController < ApplicationController
    def index
        forecast_obj = Weather.new(params[:latlong])
        @forecast = forecast_obj.cached_weather()
        render :json => @forecast
    end
end
