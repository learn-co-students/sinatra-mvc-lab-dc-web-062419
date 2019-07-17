class PigLatinizer < ActiveRecord::Base

    get '/' do 
     erb :user_input   
    end


end