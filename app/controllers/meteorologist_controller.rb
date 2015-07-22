require 'open-uri'

class MeteorologistController < ApplicationController
  def street_to_weather_form
    # Nothing to do here.
    render("street_to_weather_form.html.erb")
  end

  def street_to_weather
    @street_address = params[:user_street_address]
    url_safe_street_address = URI.encode(@street_address)



  def kevin
        url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{@street_address}"


        parsed_data = JSON.parse(open(url).read)
        latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    end

    def nicole
         url = "http://maps.googleapis.com/maps/api/geocode/json?address=(#{@street_address}"


        parsed_data = JSON.parse(open(url).read)
        longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]
    end






    def temp
          require 'open-uri'


          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{kevin},#{nicole}"

               parsed_data = JSON.parse(open(url).read)
               temperature = parsed_data["currently"]["temperature"]
    end

     def summary
          require 'open-uri'


          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{kevin},#{nicole}"

               parsed_data = JSON.parse(open(url).read)
               temperature = parsed_data["currently"]["summary"]
    end

    def summary1
          require 'open-uri'


          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{kevin},#{nicole}"

               parsed_data = JSON.parse(open(url).read)
               temperature = parsed_data["minutely"]["summary"]
    end

     def summary2
          require 'open-uri'


          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{kevin},#{nicole}"

               parsed_data = JSON.parse(open(url).read)
               temperature = parsed_data["hourly"]["summary"]
    end

     def summary3
          require 'open-uri'


          url = "https://api.forecast.io/forecast/5fa7d55c02984ea9bcad2898c1e155c4/#{kevin},#{nicole}"

               parsed_data = JSON.parse(open(url).read)
               temperature = parsed_data["daily"]["summary"]
    end









    # ==========================================================================
    # Your code goes below.
    # The street address the user input is in the string @street_address.
    # A URL-safe version of the street address, with spaces and other illegal
    #   characters removed, is in the string url_safe_street_address.
    # ==========================================================================



    @current_temperature = temp

    @current_summary = summary

    @summary_of_next_sixty_minutes = summary1

    @summary_of_next_several_hours = summary2

    @summary_of_next_several_days = summary3

    render("street_to_weather.html.erb")
  end
end
