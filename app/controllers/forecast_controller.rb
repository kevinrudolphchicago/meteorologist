require 'open-uri'

class ForecastController < ApplicationController
  def coords_to_weather_form
    # Nothing to do here.
    render("coords_to_weather_form.html.erb")
  end

  def coords_to_weather
    @lat = params[:user_latitude]
    @lng = params[:user_longitude]




    def temp
          require 'open-uri'


          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{@lat},#{@lng}"

               parsed_data = JSON.parse(open(url).read)
               temperature = parsed_data["currently"]["temperature"]
    end




       def summary
          require 'open-uri'


          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{@lat},#{@lng}"

               parsed_data = JSON.parse(open(url).read)
               summary = parsed_data["currently"]["summary"]
      end

      def summary1
          require 'open-uri'


          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{@lat},#{@lng}"

               parsed_data = JSON.parse(open(url).read)
               summary1 = parsed_data["minutely"]["summary"]
                #some places do not have minutes; its just a lack of information for the API
      end




      def summary2
          require 'open-uri'

          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{@lat},#{@lng}"

               parsed_data = JSON.parse(open(url).read)
               summary2 = parsed_data["hourly"]["summary"]
      end

       def summary3
          require 'open-uri'


          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{@lat},#{@lng}"

               parsed_data = JSON.parse(open(url).read)
               summary3 = parsed_data["daily"]["summary"]
      end







    # ==========================================================================
    # Your code goes below.
    # The latitude the user input is in the string @lat.
    # The longitude the user input is in the string @lng.
    # ==========================================================================



    @current_temperature = temp

    @current_summary = summary

    @summary_of_next_sixty_minutes =summary1

    @summary_of_next_several_hours = summary2

    @summary_of_next_several_days = summary3

    render("coords_to_weather.html.erb")
  end
end
