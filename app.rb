require 'sinatra'

class MyWebApp < Sinatra::Base
  get '/' do
    erb :home
  end

  helpers do
    # this defines a method to help you create buttons faster
    def icon_button(icon, message='', type='button')
      %(
      <button type="#{type}" class="btn btn-default btn-lg">
      <span class="#{icon}" aria-hidden="true"></span> #{message}
      </button>
      )
    end
    # this does stuff with fonts
    def use_google_font(font='Open+Sans')
      %(
      <link href='https://fonts.googleapis.com/css?family=#{font}' rel='stylesheet' type='text/css'>
      <style>
      body {
        font-family: #{font};
      }
      </style>
      )
    end
    def pluralize(singular_name, count)
      if count == 1
        %(#{count} cat)
      else
        %(#{count} cats)
      end
    end

    def current_year
      Time.now.year
    end
  end
end
