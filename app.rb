require 'sinatra'

class MyWebApp < Sinatra::Base
  get '/' do
    erb :home
  end

  helpers do
    # def icon_button(icon, message='', type='default')
    def icon_button(icon, message='', type='button')
      %(
        <button type="#{type}" class="btn btn-default btn-lg">
          <span class="#{icon}" aria-hidden="true"></span> #{message}
        </button>
      )
    end

    # def pluralize
    #   if number_of_cats == 1
    #     singular_or_plural = 'cat'
    #   else
    #     singular_or_plural = 'cats'
    #   end
    # end

    def current_year
      Time.now.year
    end

  end
end
